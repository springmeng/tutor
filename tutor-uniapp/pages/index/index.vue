<template>
	<view class="container">
		<!-- 定位信息 -->
		<view class="location-bar">
			<uni-icons type="location" color="#FF6B35" size="20"></uni-icons>
			<text class="location-text">{{ locationText }}</text>
			<uni-icons type="right" color="#999" size="16"></uni-icons>
		</view>

		<!-- 轮播图 -->
		<view class="swiper-section">
			<swiper
				class="swiper"
				:indicator-dots="true"
				:autoplay="true"
				:interval="3000"
				:duration="500"
				indicator-color="rgba(255,255,255,0.5)"
				indicator-active-color="#FF6B35"
			>
				<swiper-item v-for="(item, index) in bannerList" :key="index">
					<view class="swiper-item">
						<image :src="item.image" mode="aspectFill" class="swiper-image"></image>
					</view>
				</swiper-item>
			</swiper>
		</view>

		<!-- 公告滚动 -->
		<view class="notice-bar">
			<uni-icons type="sound" color="#FF6B35" size="20"></uni-icons>
			<swiper
				class="notice-swiper"
				:vertical="true"
				:autoplay="true"
				:interval="3000"
				:duration="500"
				:circular="true"
			>
				<swiper-item v-for="(item, index) in noticeList" :key="index">
					<text class="notice-text">{{ item.title }}</text>
				</swiper-item>
			</swiper>
			<uni-icons type="right" color="#999" size="16"></uni-icons>
		</view>

		<!-- 角色选择按钮 -->
		<view class="role-section">
			<view class="role-btn parent-btn">
				<uni-icons type="person" color="#fff" size="40"></uni-icons>
				<text class="role-text">我是家长</text>
				<text class="role-desc">寻找优秀老师</text>
			</view>
			<view class="role-btn teacher-btn">
				<uni-icons type="staff" color="#fff" size="40"></uni-icons>
				<text class="role-text">我是老师</text>
				<text class="role-desc">提供辅导服务</text>
			</view>
		</view>

		<!-- 辅导科目 -->
		<view class="subject-section">
			<view class="section-title">
				<text class="title-text">辅导科目</text>
			</view>
			<view class="subject-container">
				<view class="subject-row" v-for="(row, rowIndex) in subjectRows" :key="rowIndex">
					<view
						class="subject-item"
						v-for="item in row"
						:key="item.id"
					>
						<view class="subject-icon">
							<image :src="item.image" mode="aspectFit" class="subject-image"></image>
						</view>
						<text class="subject-name">{{ item.name }}</text>
					</view>
				</view>
			</view>
		</view>

		<!-- 公益榜单 -->
		<view class="rank-section">
			<view class="section-title">
				<text class="title-text">公益榜单 TOP10</text>
				<text class="title-tips">社区公益师资</text>
			</view>
			<view class="rank-list">
				<view
					class="rank-item"
					v-for="(item, index) in rankList"
					:key="index"
				>
					<!-- 头像和基本信息 -->
					<view class="teacher-header">
						<image class="teacher-avatar" :src="item.avatar" mode="scaleToFill"></image>
						<view class="header-info">
					<!-- 第一行:家教编号和点赞 -->
					<view class="info-row row-header">
						<view class="row-content">
							<uni-icons type="contact" color="#FF6B35" size="16"></uni-icons>
							<text class="label-text">编号:</text>
							<text class="value-text">{{ item.tutorNo || item.tutorId }}</text>
						</view>
						<view class="like-section">
							<view class="like-btn" :class="{ 'liked': item.isLiked }">
								<uni-icons
									:type="item.isLiked ? 'heart-filled' : 'heart'"
									:color="item.isLiked ? '#FF6B35' : '#999'"
									size="20"
								></uni-icons>
							</view>
							<text class="like-count">{{ item.likeCount }}</text>
						</view>
					</view>

							<!-- 第二行:姓名、性别、年龄、家教类型 -->
							<view class="info-row">
								<uni-icons type="person-filled" color="#4ECDC4" size="16"></uni-icons>
								<text class="label-text">姓名:</text>
								<text class="value-text">{{ item.name }}  {{ item.gender && item.gender !== '-' ? item.gender : '' }}  {{ item.age && item.age !== '-' ? item.age + '岁' : '' }}  {{ item.teacherType && item.teacherType !== '-' ? item.teacherType : '' }}</text>
							</view>
						</view>
					</view>

					<!-- 第三行:地址 -->
					<view class="info-row">
						<uni-icons type="location-filled" color="#FF6B35" size="16"></uni-icons>
						<text class="label-text">地址:</text>
						<text class="value-text">{{ item.address }}</text>
					</view>

					<!-- 第四行:辅导科目和授课方式 -->
					<view class="info-row">
						<uni-icons type="compose" color="#FFB800" size="16"></uni-icons>
						<text class="label-text">辅导科目:</text>
						<text class="value-text">{{ item.subjects.join('、') }}  授课方式:{{ item.teachingMode }}</text>
					</view>

				<!-- 第五行:学历、学校、专业 -->
				<view class="info-row">
					<uni-icons type="staff-filled" color="#9C27B0" size="16"></uni-icons>
					<text class="label-text">学历:</text>
					<text class="value-text">{{ item.grade }}  {{ item.school }}  {{ item.major || '' }}</text>
				</view>

					<!-- 第六行:可辅导年级 -->
					<view class="info-row" v-if="item.grades.length > 0">
						<uni-icons type="bars" color="#4ECDC4" size="16"></uni-icons>
						<text class="label-text">可辅导年级:</text>
						<text class="value-text">{{ item.grades.join('、') }}</text>
					</view>

					<!-- 第七行:期望助学金 -->
					<view class="info-row">
						<uni-icons type="wallet-filled" color="#FF6B35" size="16"></uni-icons>
						<text class="label-text">期望助学金:</text>
						<text class="value-text salary">{{ item.salary }}</text>
					</view>

				<!-- 第八行:评分、服务次数 -->
				<view class="info-row">
					<uni-icons type="star-filled" color="#FFB800" size="16"></uni-icons>
					<text class="label-text">评分:</text>
					<text class="value-text">{{ item.score }}分  服务:{{ item.serviceCount }}次</text>
				</view>

					<!-- 第九行:学员要求 -->
					<view class="info-row" v-if="item.studentRequire">
						<uni-icons type="info-filled" color="#999" size="16"></uni-icons>
						<text class="label-text">学员要求:</text>
						<text class="value-text">{{ item.studentRequire }}</text>
					</view>

					<!-- 第十行:教学经验 -->
					<view class="info-row" v-if="item.teachingExperience">
						<uni-icons type="flag-filled" color="#4ECDC4" size="16"></uni-icons>
						<text class="label-text">教学经验:</text>
						<text class="value-text">{{ item.teachingExperience }}</text>
					</view>
				</view>
			</view>
		</view>
	</view>
</template>

<script setup>
import { ref, computed, onMounted } from 'vue'

// 定位信息 - 使用固定模拟位置
const locationText = ref('广东省深圳市南山区')

// 轮播图数据 - 模拟数据
const bannerList = ref([
	{
		id: 1,
		image: '/static/banner1.jpg'
	},
	{
		id: 2,
		image: '/static/banner2.jpg'
	},
	{
		id: 3,
		image: '/static/banner3.jpg'
	}
])

// 公告数据 - 模拟数据
const noticeList = ref([
	{ id: 1, title: '欢迎使用家教预约平台!' },
	{ id: 2, title: '平台致力于连接优质师资,助力学业成长' },
	{ id: 3, title: '诚信服务,用心教学' }
])

// 辅导科目数据 - 模拟数据
const subjectList = ref([
	{ id: 1, name: '语文', image: '/static/chinese.png' },
	{ id: 2, name: '数学', image: '/static/math.png' },
	{ id: 3, name: '英语', image: '/static/english.png' },
	{ id: 4, name: '物理', image: '/static/physics.png' },
	{ id: 5, name: '化学', image: '/static/chemistry.png' },
	{ id: 6, name: '生物', image: '/static/biology.png' },
	{ id: 7, name: '政治', image: '/static/politics.png' },
	{ id: 8, name: '历史', image: '/static/history.png' },
	{ id: 9, name: '地理', image: '/static/geography.png' },
	{ id: 10, name: '编程', image: '/static/programming.png' }
])

// 计算属性:将科目列表按每行5个分组
const subjectRows = computed(() => {
	const rows = []
	const itemsPerRow = 5

	for (let i = 0; i < subjectList.value.length; i += itemsPerRow) {
		rows.push(subjectList.value.slice(i, i + itemsPerRow))
	}

	return rows
})

// 公益榜单数据 - 模拟数据
const rankList = ref([
	{
		tutorId: 1,
		tutorNo: 'T20231001',
		name: '张老师',
		avatar: '/static/avatar.jpg',
		gender: '男',
		age: 28,
		teacherType: '在校生',
		grade: '研究生',
		school: '清华大学',
		major: '计算机科学与技术',
		score: 4.9,
		address: '深圳市南山区科技园',
		serviceCount: 156,
		likeCount: 328,
		subjects: ['数学', '物理', '编程'],
		grades: ['初中一年级', '初中二年级', '初中三年级', '高中一年级'],
		teachingMode: '线下',
		salary: '200元/小时',
		studentRequire: '基础扎实,有上进心',
		teachingExperience: '5年教学经验,擅长启发式教学,帮助学生建立知识体系',
		isLiked: false
	},
	{
		tutorId: 2,
		tutorNo: 'T20231002',
		name: '李老师',
		avatar: '/static/avatar.jpg',
		gender: '女',
		age: 26,
		teacherType: '在职',
		grade: '本科',
		school: '北京大学',
		major: '英语语言文学',
		score: 4.8,
		address: '深圳市福田区中心区',
		serviceCount: 142,
		likeCount: 286,
		subjects: ['英语', '语文'],
		grades: ['小学三年级', '小学四年级', '小学五年级', '小学六年级'],
		teachingMode: '线上',
		salary: '180元/小时',
		studentRequire: '认真听讲,按时完成作业',
		teachingExperience: '3年教学经验,注重培养学生学习兴趣和自主学习能力',
		isLiked: false
	},
	{
		tutorId: 3,
		tutorNo: 'T20231003',
		name: '王老师',
		avatar: '/static/avatar.jpg',
		gender: '男',
		age: 35,
		teacherType: '退休',
		grade: '硕士',
		school: '复旦大学',
		major: '化学',
		score: 5.0,
		address: '深圳市罗湖区东门',
		serviceCount: 289,
		likeCount: 512,
		subjects: ['化学', '生物'],
		grades: ['高中一年级', '高中二年级', '高中三年级'],
		teachingMode: '线下',
		salary: '250元/小时',
		studentRequire: '有一定基础,愿意深入学习',
		teachingExperience: '10年教学经验,多名学生考入985高校',
		isLiked: false
	},
	{
		tutorId: 4,
		tutorNo: 'T20231004',
		name: '赵老师',
		avatar: '/static/avatar.jpg',
		gender: '女',
		age: 24,
		teacherType: '在校生',
		grade: '本科',
		school: '中山大学',
		major: '历史学',
		score: 4.7,
		address: '深圳市宝安区西乡',
		serviceCount: 98,
		likeCount: 176,
		subjects: ['历史', '政治', '地理'],
		grades: ['初中一年级', '初中二年级', '初中三年级'],
		teachingMode: '线上',
		salary: '150元/小时',
		studentRequire: '对文科感兴趣,善于思考',
		teachingExperience: '2年教学经验,擅长引导学生理解记忆',
		isLiked: false
	},
	{
		tutorId: 5,
		tutorNo: 'T20231005',
		name: '刘老师',
		avatar: '/static/avatar.jpg',
		gender: '男',
		age: 30,
		teacherType: '在职',
		grade: '硕士',
		school: '上海交通大学',
		major: '数学与应用数学',
		score: 4.9,
		address: '深圳市南山区蛇口',
		serviceCount: 213,
		likeCount: 421,
		subjects: ['数学', '物理'],
		grades: ['高中一年级', '高中二年级', '高中三年级'],
		teachingMode: '线下',
		salary: '220元/小时',
		studentRequire: '基础良好,有挑战难题的决心',
		teachingExperience: '7年教学经验,善于培养学生数学思维',
		isLiked: false
	}
])

onMounted(() => {
	// 页面加载完成
	console.log('家教预约平台首页加载完成 - 静态演示版本')
})
</script>

<style scoped>
.container {
	min-height: 100vh;
	background: linear-gradient(to bottom, #FFF4F0 0%, #f5f5f5 300rpx);
	padding-bottom: 20rpx;
}

/* 定位栏 */
.location-bar {
	display: flex;
	align-items: center;
	padding: 20rpx 30rpx;
	background-color: #fff;
	margin: 20rpx;
	border-radius: 16rpx;
	box-shadow: 0 2rpx 12rpx rgba(255, 107, 53, 0.1);
}

.location-text {
	flex: 1;
	margin-left: 10rpx;
	font-size: 28rpx;
	color: #333;
}

/* 轮播图 */
.swiper-section {
	margin: 20rpx;
}

.swiper {
	height: 320rpx;
	border-radius: 16rpx;
	overflow: hidden;
}

.swiper-item {
	width: 100%;
	height: 100%;
	background: linear-gradient(135deg, #FF6B35 0%, #FF8E53 100%);
	display: flex;
	align-items: center;
	justify-content: center;
}

.swiper-image {
	width: 100%;
	height: 100%;
}

/* 公告栏 */
.notice-bar {
	display: flex;
	align-items: center;
	padding: 20rpx 30rpx;
	background-color: #FFF4F0;
	margin: 20rpx;
	border-radius: 16rpx;
	border: 1rpx solid #FFE0D6;
}

.notice-swiper {
	flex: 1;
	height: 40rpx;
	margin: 0 10rpx;
}

.notice-text {
	font-size: 26rpx;
	color: #666;
	line-height: 40rpx;
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
}

/* 角色选择 */
.role-section {
	display: flex;
	gap: 20rpx;
	padding: 0 20rpx;
	margin: 20rpx 0;
}

.role-btn {
	flex: 1;
	padding: 30rpx 20rpx;
	border-radius: 16rpx;
	display: flex;
	flex-direction: column;
	align-items: center;
	box-shadow: 0 4rpx 16rpx rgba(0, 0, 0, 0.1);
}

.parent-btn {
	background: #FF6B35;
}

.teacher-btn {
	background: #4ECDC4;
}

.role-text {
	font-size: 32rpx;
	font-weight: bold;
	color: #fff;
	margin-top: 16rpx;
}

.role-desc {
	font-size: 24rpx;
	color: rgba(255, 255, 255, 0.9);
	margin-top: 8rpx;
}

/* 辅导科目 */
.subject-section {
	margin: 20rpx 0;
}

.section-title {
	display: flex;
	justify-content: space-between;
	align-items: center;
	padding: 20rpx 30rpx;
}

.title-text {
	font-size: 32rpx;
	font-weight: bold;
	color: #333;
}

.title-tips {
	font-size: 24rpx;
	color: #999;
	margin-left: 10rpx;
}

.subject-container {
	padding: 0 30rpx;
}

.subject-row {
	display: flex;
	justify-content: flex-start;
	gap: 20rpx;
	margin-bottom: 30rpx;
}

.subject-row:last-child {
	margin-bottom: 0;
}

.subject-item {
	display: flex;
	flex-direction: column;
	align-items: center;
	width: 120rpx;
}

.subject-icon {
	background-color: #f5f5f5;
	width: 100rpx;
	height: 100rpx;
	border-radius: 20rpx;
	display: flex;
	align-items: center;
	justify-content: center;
	margin-bottom: 16rpx;
	overflow: hidden;
}

.subject-image {
	width: 60rpx;
	height: 60rpx;
}

.subject-name {
	font-size: 26rpx;
	color: #333;
	text-align: center;
}

/* 公益榜单 */
.rank-section {
	margin-bottom: 20rpx;
	padding: 30rpx;
	background-color: #fff;
	box-shadow: 0 2rpx 12rpx rgba(0, 0, 0, 0.05);
}

.rank-list {
	display: flex;
	flex-direction: column;
	gap: 20rpx;
	margin-top: 20rpx;
}

.rank-item {
	padding: 20rpx;
	background-color: #fff;
	border-radius: 8rpx;
	border: 1rpx solid #e5e5e5;
}

.teacher-header {
	display: flex;
	gap: 16rpx;
	margin-bottom: 12rpx;
}

.teacher-avatar {
	width: 160rpx;
	height: 160rpx;
	border-radius: 8rpx;
	flex-shrink: 0;
	display: block;
	object-fit: cover;
}

.header-info {
	flex: 1;
	display: flex;
	flex-direction: column;
	justify-content: space-between;
}

.info-row {
	display: flex;
	align-items: flex-start;
	gap: 8rpx;
	padding: 8rpx 0;
	font-size: 26rpx;
	line-height: 1.6;
}

.info-row.row-header {
	display: flex;
	justify-content: space-between;
	align-items: center;
	border-bottom: 1rpx solid #f0f0f0;
	padding-bottom: 12rpx;
	margin-bottom: 8rpx;
	padding-top: 0;
}

.row-content {
	display: flex;
	align-items: center;
	gap: 8rpx;
}

.label-text {
	color: #666;
	font-weight: 500;
	flex-shrink: 0;
}

.value-text {
	color: #333;
	flex: 1;
	word-break: break-all;
}

.value-text.salary {
	color: #FF6B35;
	font-weight: bold;
}

.like-section {
	display: flex;
	flex-direction: column;
	align-items: center;
	gap: 4rpx;
}

.like-btn {
	padding: 8rpx;
	display: flex;
	align-items: center;
	justify-content: center;
}

.like-count {
	font-size: 20rpx;
	color: #FF6B35;
	font-weight: bold;
}
</style>
