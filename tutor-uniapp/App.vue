<script>

	export default {
		globalData: {
			// 用户位置信息（应用生命周期内有效）
			userLocation: null
		},
		onLaunch: function(options) {
			console.log('小程序启动 - 静态演示版本')
		},
		onShow: function(options) {
			console.log('小程序显示 - 静态演示版本')
		},
		onHide: function() {
			console.log('小程序隐藏')
		}
	}
</script>

<style lang="scss">
	/*每个页面公共css */
	@import '@/uni_modules/uni-scss/index.scss';
	/* #ifndef APP-NVUE */
	@import '@/static/customicons.css';
	// 设置整个项目的背景色
	page {
		background-color: #f5f5f5;
	}

	/* #endif */
	.example-info {
		font-size: 14px;
		color: #333;
		padding: 10px;
	}
</style>
