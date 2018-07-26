<rain>
	<div class="rain">
		<droplet class="droplet" each={droplet in droplets}></droplet>
	</div>

	<script>
		//put some random string into each droplet
this.droplets = '0'.repeat(5).split('');
	</script>

	<style>
		.rain {
			background-color: black;
			width: 100vw;
			height: 100vh;
			position: relative;
			overflow: hidden;
		}
	</style>
</rain>


<droplet class="droplet"  onmouseover={ shuffleBg }>
<script>
var filenames = [
	"alien.png",
	"frown.png",
	"omg.png",
	"babe.png",
	"moon.png",
	"slience.png",
	"unicorn.png",
	"ghost.png"
];

var thisEl = this.root;
thisEl.style.animationDuration = `${(Math.random() * 4) + 3 }s`;
thisEl.style.left = `${(Math.random() * 100)}%`;
thisEl.style.top = `${Math.random() * -80 }%`;

var bgIndex = Math.floor(Math.random() * filenames.length);
thisEl.style.backgroundImage = "url(./img/"+ filenames[bgIndex] +")";


shuffleBg(e){
	if(bgIndex == filenames.length-1){
		bgIndex = 0;
	}else{
		bgIndex ++;
	}
	// console.log(e.target);
	e.target.style.backgroundImage = "url(img/"+ filenames[bgIndex] +")";
}
</script>

	<style>
		:scope {
			display: block;
			background-size: cover;
			width: 5em;
			height: 5em;
			position: absolute;
			animation: rain 1.5s linear;
			animation-iteration-count: infinite;
			z-index: 1;
			top: 0;
		}
		@keyframes rain {
			100% {
				top: 110%;
			}
		}
	</style>
</droplet>
