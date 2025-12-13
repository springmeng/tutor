<template>
	<view class="uni-popup-logo">
		<view class="uni-logo-title"><text class="uni-logo-title-text">{{logoTitleText}}</text></view>
		<view class="uni-logo-content">
			<view class="uni-logo-content-box">
				<view class="uni-logo-content-item" v-for="(item,index) in bottomData" :key="index" @click.stop="select(item,index)">
					<image class="uni-logo-image" :src="item.icon" mode="aspectFill"></image>
					<text class="uni-logo-text">{{item.text}}</text>
				</view>

			</view>
		</view>
		<view class="uni-logo-button-box">
			<button class="uni-logo-button" @click="close">{{cancelText}}</button>
		</view>
	</view>
</template>

<script>
	import popup from '../uni-popup/popup.js'
	import {
	initVueI18n
	} from '@dcloudio/uni-i18n'
	import messages from '../uni-popup/i18n/index.js'
	const {	t	} = initVueI18n(messages)
	export default {
		name: 'UniPopuplogo',
		mixins:[popup],
		emits:['select'],
		props: {
			title: {
				type: String,
				default: ''
			},
			beforeClose: {
				type: Boolean,
				default: false
			}
		},
		data() {
			return {
				bottomData: [{
						text: '微信',
						icon: 'https://vkceyugu.cdn.bspapp.com/VKCEYUGU-dc-site/c2b17470-50be-11eb-b680-7980c8a877b8.png',
						name: 'wx'
					},
					{
						text: '支付宝',
						icon: 'https://vkceyugu.cdn.bspapp.com/VKCEYUGU-dc-site/d684ae40-50be-11eb-8ff1-d5dcf8779628.png',
						name: 'ali'
					},
					{
						text: 'QQ',
						icon: 'https://vkceyugu.cdn.bspapp.com/VKCEYUGU-dc-site/e7a79520-50be-11eb-b997-9918a5dda011.png',
						name: 'qq'
					},
					{
						text: '新浪',
						icon: 'https://vkceyugu.cdn.bspapp.com/VKCEYUGU-dc-site/0dacdbe0-50bf-11eb-8ff1-d5dcf8779628.png',
						name: 'sina'
					},
					// {
					// 	text: '百度',
					// 	icon: 'https://vkceyugu.cdn.bspapp.com/VKCEYUGU-dc-site/1ec6e920-50bf-11eb-8a36-ebb87efcf8c0.png',
					// 	name: 'copy'
					// },
					// {
					// 	text: '其他',
					// 	icon: 'https://vkceyugu.cdn.bspapp.com/VKCEYUGU-dc-site/2e0fdfe0-50bf-11eb-b997-9918a5dda011.png',
					// 	name: 'more'
					// }
				]
			}
		},
		created() {},
		computed: {
			cancelText() {
				return t("uni-popup.cancel")
			},
		logoTitleText() {
				return this.title || t("uni-popup.logoTitle")
			}
		},
		methods: {
			/**
			 * 选择内容
			 */
			select(item, index) {
				this.$emit('select', {
					item,
					index
				})
				this.close()

			},
			/**
			 * 关闭窗口
			 */
			close() {
				if(this.beforeClose) return
				this.popup.close()
			}
		}
	}
</script>
<style lang="scss" >
	.uni-popup-logo {
		background-color: #fff;
		border-top-left-radius: 11px;
		border-top-right-radius: 11px;
	}
	.uni-logo-title {
		/* #ifndef APP-NVUE */
		display: flex;
		/* #endif */
		flex-direction: row;
		align-items: center;
		justify-content: center;
		height: 40px;
	}
	.uni-logo-title-text {
		font-size: 14px;
		color: #666;
	}
	.uni-logo-content {
		/* #ifndef APP-NVUE */
		display: flex;
		/* #endif */
		flex-direction: row;
		justify-content: center;
		padding-top: 10px;
	}

	.uni-logo-content-box {
		/* #ifndef APP-NVUE */
		display: flex;
		/* #endif */
		flex-direction: row;
		flex-wrap: wrap;
		width: 360px;
	}

	.uni-logo-content-item {
		width: 90px;
		/* #ifndef APP-NVUE */
		display: flex;
		/* #endif */
		flex-direction: column;
		justify-content: center;
		padding: 10px 0;
		align-items: center;
	}

	.uni-logo-content-item:active {
		background-color: #f5f5f5;
	}

	.uni-logo-image {
		width: 30px;
		height: 30px;
	}

	.uni-logo-text {
		margin-top: 10px;
		font-size: 14px;
		color: #3B4144;
	}

	.uni-logo-button-box {
		/* #ifndef APP-NVUE */
		display: flex;
		/* #endif */
		flex-direction: row;
		padding: 10px 15px;
	}

	.uni-logo-button {
		flex: 1;
		border-radius: 50px;
		color: #666;
		font-size: 16px;
	}

	.uni-logo-button::after {
		border-radius: 50px;
	}
</style>
