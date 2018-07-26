<rain>
	<div class="rain">

		<droplet each={droplet in droplets}></droplet>

	</div>

	<script>
		//put some random string into each droplet
this.droplets = new Array(150);

	</script>

	<style>
		.rain {
			background-image: url("img/emoji.jpg");
			background-size: cover;
			width: 100vw;
			height: 100vh;
			position: relative;
			overflow: hidden;
		}

		.rain .droplet {
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

</rain>
