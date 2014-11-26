.class Lcom/android/keyguard/KeyguardMultiUserAvatar;
.super Landroid/widget/FrameLayout;
.source "KeyguardMultiUserAvatar.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActive:Z

.field private final mActiveAlpha:F

.field private final mActiveScale:F

.field private final mActiveTextAlpha:F

.field private final mAvatarShadowY:F

.field private final mFrameColor:I

.field private final mFrameColorNormal:I

.field private final mFrameColorRestricted:I

.field private final mFrameShadowColor:I

.field private mFramed:Lcom/android/keyguard/KeyguardCircleFramedDrawable;

.field private mFramedRec:Lcom/android/keyguard/KeyguardRectangleFramedDrawable;

.field private final mHighlightColor:I

.field private final mIconSize:F

.field private final mInactiveAlpha:F

.field private final mInactiveTextAlpha:F

.field private mInit:Z

.field private mPressLock:Z

.field private final mShadowRadius:F

.field private final mStroke:F

.field private final mTextColor:I

.field private mTouched:Z

.field private mUserImage:Landroid/widget/ImageView;

.field private mUserInfo:Landroid/content/pm/UserInfo;

.field private mUserManager:Landroid/os/UserManager;

.field private mUserName:Landroid/widget/TextView;

.field private mUserSelector:Lcom/android/keyguard/KeyguardMultiUserSelectorView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/keyguard/KeyguardMultiUserAvatar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->TAG:Ljava/lang/String;

    sget-boolean v0, Lcom/android/keyguard/KeyguardHostView;->DEBUG:Z

    sput-boolean v0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/keyguard/KeyguardMultiUserAvatar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/KeyguardMultiUserAvatar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I

    const/4 v3, 0x1

    const/high16 v2, 0x3f800000

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v3, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mInit:Z

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mTextColor:I

    const v1, 0x7f0c000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mIconSize:F

    const v1, 0x7f0c000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mStroke:F

    const v1, 0x7f0c000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mShadowRadius:F

    const v1, 0x7f070001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mFrameColor:I

    const v1, 0x7f070002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mFrameShadowColor:I

    const v1, 0x7f070004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mHighlightColor:I

    const v1, 0x7f070005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mFrameColorNormal:I

    const v1, 0x7f070006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mFrameColorRestricted:I

    iput v2, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mInactiveTextAlpha:F

    const v1, 0x7f0c0013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mAvatarShadowY:F

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMagazineCardSupport()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMUMLook2013()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iput v2, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mActiveTextAlpha:F

    const v1, 0x3f8ccccd

    iput v1, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mActiveScale:F

    :goto_0
    iput v2, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mActiveAlpha:F

    iput v2, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mInactiveAlpha:F

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mUserManager:Landroid/os/UserManager;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mTouched:Z

    const/4 v1, 0x0

    invoke-virtual {p0, v3, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void

    :cond_1
    iput v2, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mActiveTextAlpha:F

    const/high16 v1, 0x3fc00000

    iput v1, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mActiveScale:F

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardMultiUserAvatar;)Lcom/android/keyguard/KeyguardRectangleFramedDrawable;
    .locals 1
    .param p0    # Lcom/android/keyguard/KeyguardMultiUserAvatar;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mFramedRec:Lcom/android/keyguard/KeyguardRectangleFramedDrawable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardMultiUserAvatar;)Landroid/widget/ImageView;
    .locals 1
    .param p0    # Lcom/android/keyguard/KeyguardMultiUserAvatar;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mUserImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardMultiUserAvatar;)Lcom/android/keyguard/KeyguardCircleFramedDrawable;
    .locals 1
    .param p0    # Lcom/android/keyguard/KeyguardMultiUserAvatar;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mFramed:Lcom/android/keyguard/KeyguardCircleFramedDrawable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardMultiUserAvatar;)Landroid/widget/TextView;
    .locals 1
    .param p0    # Lcom/android/keyguard/KeyguardMultiUserAvatar;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mUserName:Landroid/widget/TextView;

    return-object v0
.end method

.method public static fromXml(ILandroid/content/Context;Lcom/android/keyguard/KeyguardMultiUserSelectorView;Landroid/content/pm/UserInfo;)Lcom/android/keyguard/KeyguardMultiUserAvatar;
    .locals 3
    .param p0    # I
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/android/keyguard/KeyguardMultiUserSelectorView;
    .param p3    # Landroid/content/pm/UserInfo;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardMultiUserAvatar;

    invoke-virtual {v0, p3, p2}, Lcom/android/keyguard/KeyguardMultiUserAvatar;->init(Landroid/content/pm/UserInfo;Lcom/android/keyguard/KeyguardMultiUserSelectorView;)V

    return-object v0
.end method

.method private getFrameColor(Landroid/content/pm/UserInfo;)I
    .locals 1
    .param p1    # Landroid/content/pm/UserInfo;

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mFrameColorRestricted:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mFrameColorNormal:I

    goto :goto_0
.end method

.method private setGuestModeIconTalkBack()V
    .locals 11

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v8, v6}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_0

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    :goto_0
    return-void

    :cond_0
    const/4 v4, 0x0

    const/4 v2, 0x0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-nez v0, :cond_2

    :goto_1
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    :try_start_0
    iget-object v6, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0600ff

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, v4, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/IllegalFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :cond_1
    :goto_2
    iget-object v6, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mUserImage:Landroid/widget/ImageView;

    invoke-virtual {v6, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    move v6, v7

    goto :goto_1

    :catch_0
    move-exception v1

    sget-boolean v6, Lcom/android/keyguard/KeyguardMultiUserAvatar;->DEBUG:Z

    if-eqz v6, :cond_1

    sget-object v6, Lcom/android/keyguard/KeyguardMultiUserAvatar;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "failed to call setGuestModeIconTalkBack "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method


# virtual methods
.method public getUserInfo()Landroid/content/pm/UserInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mUserInfo:Landroid/content/pm/UserInfo;

    return-object v0
.end method

.method public init(Landroid/content/pm/UserInfo;Lcom/android/keyguard/KeyguardMultiUserSelectorView;)V
    .locals 15
    .param p1    # Landroid/content/pm/UserInfo;
    .param p2    # Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mUserInfo:Landroid/content/pm/UserInfo;

    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mUserSelector:Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    const v1, 0x7f0b00ad

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mUserImage:Landroid/widget/ImageView;

    const v1, 0x7f0b00ae

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mUserName:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPreviousLook()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMUMLook2013()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/android/keyguard/KeyguardViewMediator;->getAvatarCache()Lcom/android/keyguard/MultiUserAvatarCache;

    move-result-object v1

    move-object/from16 v0, p1

    iget v3, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v3}, Lcom/android/keyguard/MultiUserAvatarCache;->get(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardRectangleFramedDrawable;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mFramedRec:Lcom/android/keyguard/KeyguardRectangleFramedDrawable;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mFramedRec:Lcom/android/keyguard/KeyguardRectangleFramedDrawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mFramedRec:Lcom/android/keyguard/KeyguardRectangleFramedDrawable;

    iget v2, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mIconSize:F

    iget v3, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mFrameColor:I

    iget v4, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mStroke:F

    iget v5, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mFrameShadowColor:I

    iget v6, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mShadowRadius:F

    iget v7, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mHighlightColor:I

    invoke-virtual/range {v1 .. v7}, Lcom/android/keyguard/KeyguardRectangleFramedDrawable;->verifyParams(FIFIFI)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v3}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :cond_1
    :goto_0
    if-nez v2, :cond_2

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x10804af

    invoke-static {v1, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_2
    new-instance v1, Lcom/android/keyguard/KeyguardRectangleFramedDrawable;

    iget v3, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mIconSize:F

    float-to-int v3, v3

    iget v4, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mFrameColor:I

    iget v5, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mStroke:F

    iget v6, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mFrameShadowColor:I

    iget v7, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mShadowRadius:F

    iget v8, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mHighlightColor:I

    invoke-direct/range {v1 .. v8}, Lcom/android/keyguard/KeyguardRectangleFramedDrawable;-><init>(Landroid/graphics/Bitmap;IIFIFI)V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mFramedRec:Lcom/android/keyguard/KeyguardRectangleFramedDrawable;

    invoke-static {}, Lcom/android/keyguard/KeyguardViewMediator;->getAvatarCache()Lcom/android/keyguard/MultiUserAvatarCache;

    move-result-object v1

    move-object/from16 v0, p1

    iget v3, v0, Landroid/content/pm/UserInfo;->id:I

    iget-object v5, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mFramedRec:Lcom/android/keyguard/KeyguardRectangleFramedDrawable;

    invoke-virtual {v1, v3, v5}, Lcom/android/keyguard/MultiUserAvatarCache;->put(ILandroid/graphics/drawable/Drawable;)V

    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mFramedRec:Lcom/android/keyguard/KeyguardRectangleFramedDrawable;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardRectangleFramedDrawable;->reset()V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mUserImage:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mFramedRec:Lcom/android/keyguard/KeyguardRectangleFramedDrawable;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mUserName:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mUserInfo:Landroid/content/pm/UserInfo;

    iget-object v3, v3, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mUserSelector:Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mInit:Z

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPreviousLook()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMUMLook2013()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardMultiUserAvatar;->setGuestModeIconTalkBack()V

    :cond_4
    return-void

    :catch_0
    move-exception v14

    sget-boolean v1, Lcom/android/keyguard/KeyguardMultiUserAvatar;->DEBUG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/keyguard/KeyguardMultiUserAvatar;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to get profile icon "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/android/keyguard/KeyguardViewMediator;->getAvatarCache()Lcom/android/keyguard/MultiUserAvatarCache;

    move-result-object v1

    move-object/from16 v0, p1

    iget v3, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v3}, Lcom/android/keyguard/MultiUserAvatarCache;->get(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardCircleFramedDrawable;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mFramed:Lcom/android/keyguard/KeyguardCircleFramedDrawable;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mFramed:Lcom/android/keyguard/KeyguardCircleFramedDrawable;

    if-eqz v1, :cond_6

    iget-object v3, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mFramed:Lcom/android/keyguard/KeyguardCircleFramedDrawable;

    iget v4, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mIconSize:F

    iget v5, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mFrameColor:I

    iget v6, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mStroke:F

    iget v7, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mFrameShadowColor:I

    iget v8, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mShadowRadius:F

    iget v9, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mHighlightColor:I

    invoke-virtual/range {v3 .. v9}, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->verifyParams(FIFIFI)Z

    move-result v1

    if-nez v1, :cond_a

    :cond_6
    const/4 v2, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v3}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    :cond_7
    :goto_2
    if-nez v2, :cond_8

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x10804af

    invoke-static {v1, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_8
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMagazineCardSupport()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMUMLook2013()Z

    move-result v1

    if-nez v1, :cond_b

    :cond_9
    invoke-direct/range {p0 .. p1}, Lcom/android/keyguard/KeyguardMultiUserAvatar;->getFrameColor(Landroid/content/pm/UserInfo;)I

    move-result v4

    new-instance v1, Lcom/android/keyguard/KeyguardCircleFramedDrawable;

    iget v3, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mIconSize:F

    float-to-int v3, v3

    iget v5, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mStroke:F

    iget v6, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mFrameShadowColor:I

    iget v7, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mShadowRadius:F

    iget v8, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mHighlightColor:I

    iget v9, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mAvatarShadowY:F

    invoke-direct/range {v1 .. v9}, Lcom/android/keyguard/KeyguardCircleFramedDrawable;-><init>(Landroid/graphics/Bitmap;IIFIFIF)V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mFramed:Lcom/android/keyguard/KeyguardCircleFramedDrawable;

    :goto_3
    invoke-static {}, Lcom/android/keyguard/KeyguardViewMediator;->getAvatarCache()Lcom/android/keyguard/MultiUserAvatarCache;

    move-result-object v1

    move-object/from16 v0, p1

    iget v3, v0, Landroid/content/pm/UserInfo;->id:I

    iget-object v5, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mFramed:Lcom/android/keyguard/KeyguardCircleFramedDrawable;

    invoke-virtual {v1, v3, v5}, Lcom/android/keyguard/MultiUserAvatarCache;->put(ILandroid/graphics/drawable/Drawable;)V

    :cond_a
    iget-object v1, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mFramed:Lcom/android/keyguard/KeyguardCircleFramedDrawable;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->reset()V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mUserImage:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mFramed:Lcom/android/keyguard/KeyguardCircleFramedDrawable;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    :catch_1
    move-exception v14

    sget-boolean v1, Lcom/android/keyguard/KeyguardMultiUserAvatar;->DEBUG:Z

    if-eqz v1, :cond_7

    sget-object v1, Lcom/android/keyguard/KeyguardMultiUserAvatar;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to get profile icon "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_b
    new-instance v5, Lcom/android/keyguard/KeyguardCircleFramedDrawable;

    iget v1, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mIconSize:F

    float-to-int v7, v1

    iget v8, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mFrameColor:I

    iget v9, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mStroke:F

    iget v10, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mFrameShadowColor:I

    iget v11, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mShadowRadius:F

    iget v12, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mHighlightColor:I

    iget v13, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mAvatarShadowY:F

    move-object v6, v2

    invoke-direct/range {v5 .. v13}, Lcom/android/keyguard/KeyguardCircleFramedDrawable;-><init>(Landroid/graphics/Bitmap;IIFIFIF)V

    iput-object v5, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mFramed:Lcom/android/keyguard/KeyguardCircleFramedDrawable;

    goto :goto_3
.end method

.method public lockPressed(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mPressLock:Z

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardMultiUserAvatar;->setPressed(Z)V

    return-void
.end method

.method public setActive(ZZLjava/lang/Runnable;)V
    .locals 7
    .param p1    # Z
    .param p2    # Z
    .param p3    # Ljava/lang/Runnable;

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mActive:Z

    if-ne v1, p1, :cond_0

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mInit:Z

    if-eqz v1, :cond_1

    :cond_0
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mActive:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardLinearLayout;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardLinearLayout;->setTopChild(Landroid/view/View;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mUserName:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v3, 0x7f06007d

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, ""

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mActive:Z

    const/16 v2, 0x96

    invoke-virtual {p0, v1, p2, v2, p3}, Lcom/android/keyguard/KeyguardMultiUserAvatar;->updateVisualsForActive(ZZILjava/lang/Runnable;)V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mUserName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setPressed(Z)V
    .locals 1
    .param p1    # Z

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mPressLock:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mPressLock:Z

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    invoke-super {p0, p1}, Landroid/view/View;->setPressed(Z)V

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPreviousLook()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMUMLook2013()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mFramedRec:Lcom/android/keyguard/KeyguardRectangleFramedDrawable;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardRectangleFramedDrawable;->setPressed(Z)V

    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mUserImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mFramed:Lcom/android/keyguard/KeyguardCircleFramedDrawable;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->setPressed(Z)V

    goto :goto_1
.end method

.method updateVisualsForActive(ZZILjava/lang/Runnable;)V
    .locals 11
    .param p1    # Z
    .param p2    # Z
    .param p3    # I
    .param p4    # Ljava/lang/Runnable;

    const/4 v8, 0x2

    const/high16 v3, 0x3f800000

    const/high16 v1, 0x437f0000

    if-eqz p1, :cond_1

    iget v5, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mActiveAlpha:F

    :goto_0
    if-eqz p1, :cond_2

    iget v4, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mInactiveAlpha:F

    :goto_1
    if-eqz p1, :cond_3

    :goto_2
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPreviousLook()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMUMLook2013()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mFramedRec:Lcom/android/keyguard/KeyguardRectangleFramedDrawable;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardRectangleFramedDrawable;->getScale()F

    move-result v2

    if-eqz p1, :cond_4

    iget v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mActiveTextAlpha:F

    mul-float/2addr v0, v1

    float-to-int v7, v0

    :goto_3
    iget v9, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mTextColor:I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mUserName:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz p2, :cond_5

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mTouched:Z

    if-eqz v0, :cond_5

    new-array v0, v8, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v10

    new-instance v0, Lcom/android/keyguard/KeyguardMultiUserAvatar$1;

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/KeyguardMultiUserAvatar$1;-><init>(Lcom/android/keyguard/KeyguardMultiUserAvatar;FFFFZ)V

    invoke-virtual {v10, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lcom/android/keyguard/KeyguardMultiUserAvatar$2;

    invoke-direct {v0, p0, p4}, Lcom/android/keyguard/KeyguardMultiUserAvatar$2;-><init>(Lcom/android/keyguard/KeyguardMultiUserAvatar;Ljava/lang/Runnable;)V

    invoke-virtual {v10, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    int-to-long v0, p3

    invoke-virtual {v10, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v10}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    :goto_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mTouched:Z

    return-void

    :cond_1
    iget v5, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mInactiveAlpha:F

    goto :goto_0

    :cond_2
    iget v4, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mActiveAlpha:F

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mActiveScale:F

    div-float/2addr v3, v0

    goto :goto_2

    :cond_4
    iget v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mInactiveTextAlpha:F

    mul-float/2addr v0, v1

    float-to-int v7, v0

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mFramedRec:Lcom/android/keyguard/KeyguardRectangleFramedDrawable;

    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardRectangleFramedDrawable;->setScale(F)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mFramedRec:Lcom/android/keyguard/KeyguardRectangleFramedDrawable;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardRectangleFramedDrawable;->setActive(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mUserImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mUserName:Landroid/widget/TextView;

    int-to-float v1, v7

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    if-eqz p4, :cond_0

    invoke-virtual {p0, p4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mFramed:Lcom/android/keyguard/KeyguardCircleFramedDrawable;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->getScale()F

    move-result v2

    if-eqz p1, :cond_7

    iget v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mActiveTextAlpha:F

    mul-float/2addr v0, v1

    float-to-int v7, v0

    :goto_5
    if-eqz p1, :cond_8

    iget v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mInactiveTextAlpha:F

    mul-float/2addr v0, v1

    float-to-int v6, v0

    :goto_6
    iget v9, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mTextColor:I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mUserName:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz p2, :cond_9

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mTouched:Z

    if-eqz v0, :cond_9

    new-array v0, v8, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v10

    new-instance v0, Lcom/android/keyguard/KeyguardMultiUserAvatar$3;

    move-object v1, p0

    move v8, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/KeyguardMultiUserAvatar$3;-><init>(Lcom/android/keyguard/KeyguardMultiUserAvatar;FFFFIIZ)V

    invoke-virtual {v10, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lcom/android/keyguard/KeyguardMultiUserAvatar$4;

    invoke-direct {v0, p0, p4}, Lcom/android/keyguard/KeyguardMultiUserAvatar$4;-><init>(Lcom/android/keyguard/KeyguardMultiUserAvatar;Ljava/lang/Runnable;)V

    invoke-virtual {v10, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    int-to-long v0, p3

    invoke-virtual {v10, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v10}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_4

    :cond_7
    iget v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mInactiveTextAlpha:F

    mul-float/2addr v0, v1

    float-to-int v7, v0

    goto :goto_5

    :cond_8
    iget v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mActiveTextAlpha:F

    mul-float/2addr v0, v1

    float-to-int v6, v0

    goto :goto_6

    :cond_9
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mFramed:Lcom/android/keyguard/KeyguardCircleFramedDrawable;

    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->setScale(F)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mFramed:Lcom/android/keyguard/KeyguardCircleFramedDrawable;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->setActive(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mUserImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar;->mUserName:Landroid/widget/TextView;

    int-to-float v1, v7

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    if-eqz p4, :cond_0

    invoke-virtual {p0, p4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_4

    :array_0
    .array-data 4
        0x0
        0x3f800000
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000
    .end array-data
.end method
