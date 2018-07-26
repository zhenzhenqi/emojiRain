<droplet class="droplet">
<script>
var that = this;

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
thisEl.style.backgroundImage = `url(img/${filenames[Math.floor(Math.random() * filenames.length)]})`;

</script>

	<style>
	.droplet {
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
