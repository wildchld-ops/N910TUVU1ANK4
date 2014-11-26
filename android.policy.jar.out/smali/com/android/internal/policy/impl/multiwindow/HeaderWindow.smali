.class public Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;
.super Ljava/lang/Object;
.source "HeaderWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;,
        Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$HeaderGestureDetectorListener;,
        Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$OnMoveListener;,
        Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$OnItemClickListener;,
        Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$OnTouchDownListener;
    }
.end annotation


# static fields
.field private static final ACTION_NOTIFY_STOP_DRAG_MODE:Ljava/lang/String; = "com.sec.android.action.NOTIFY_STOP_DRAG_MODE"

.field private static final DISMISS_MENU_TIMER_MESSAGE:I = 0x64

.field private static final DISMISS_MENU_TIMER_TIME:I = 0x3e8

.field public static final DRAGNDROP_MODE:I = 0x2

.field public static final FOCUS_MODE:I = 0x1

.field public static final NORMAL_MODE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "HeaderWindow"


# instance fields
.field private mAttached:Z

.field private mBoundsRect:Landroid/graphics/Rect;

.field private mConsumeTouchEvent:Z

.field private mContext:Landroid/content/Context;

.field private mDecor:Landroid/widget/FrameLayout;

.field private mDocking:Lcom/android/internal/policy/impl/multiwindow/Docking;

.field private mDockingMargin:I

.field private mDockingX:I

.field private mDockingY:I

.field private mFirstX:I

.field private mFirstY:I

.field private mFocused:Z

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

.field private mHeaderButtonSoundId:I

.field private mIconView:Landroid/widget/ImageView;

.field private mIsDockingCanceled:Z

.field private mItemClickListener:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$OnItemClickListener;

.field private mIvt:[B

.field private mLastX:I

.field private mLastY:I

.field private mLayoutParam:Landroid/view/WindowManager$LayoutParams;

.field private mMenuView:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;

.field private mMoveListener:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$OnMoveListener;

.field private mMoving:Z

.field private mShowing:Z

.field private mSoundPool:Landroid/media/SoundPool;

.field private mStatusBarHeight:I

.field mTimerHandler:Landroid/os/Handler;

.field private mToken:Landroid/os/IBinder;

.field private mTouchDownListener:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$OnTouchDownListener;

.field private mVibrator:Landroid/os/SystemVibrator;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowFacade;)V
    .locals 6
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/os/IBinder;
    .param p3    # Lcom/samsung/android/multiwindow/MultiWindowFacade;

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mConsumeTouchEvent:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mBoundsRect:Landroid/graphics/Rect;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mHeaderButtonSoundId:I

    iput v4, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mStatusBarHeight:I

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mIsDockingCanceled:Z

    const/16 v0, 0x1a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mIvt:[B

    new-instance v0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$1;-><init>(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mTimerHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mToken:Landroid/os/IBinder;

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mWindowManager:Landroid/view/WindowManager;

    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$HeaderGestureDetectorListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$HeaderGestureDetectorListener;-><init>(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$1;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mGestureDetector:Landroid/view/GestureDetector;

    new-instance v0, Lcom/android/internal/policy/impl/multiwindow/Docking;

    check-cast p1, Landroid/app/Activity;

    invoke-direct {v0, p1, p3}, Lcom/android/internal/policy/impl/multiwindow/Docking;-><init>(Landroid/app/Activity;Lcom/samsung/android/multiwindow/MultiWindowFacade;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mDocking:Lcom/android/internal/policy/impl/multiwindow/Docking;

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mContext:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SystemVibrator;

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mVibrator:Landroid/os/SystemVibrator;

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mDocking:Lcom/android/internal/policy/impl/multiwindow/Docking;

    new-instance v1, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$2;-><init>(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/Docking;->setOnDockingListener(Lcom/android/internal/policy/impl/multiwindow/Docking$OnDockingListener;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050161

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mDockingMargin:I

    new-instance v0, Landroid/media/SoundPool;

    invoke-direct {v0, v5, v5, v4}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mSoundPool:Landroid/media/SoundPool;

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mContext:Landroid/content/Context;

    const v2, 0x1100004

    invoke-virtual {v0, v1, v2, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mHeaderButtonSoundId:I

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mStatusBarHeight:I

    return-void

    :array_0
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x0t
        0x12t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x30t
        0x0t
        0x0t
        0xat
        0x0t
        0x0t
        0x0t
        0x0t
        0x20t
        0x0t
        0x0t
        0x0t
        0x7ft
        0x0t
        0x0t
        -0x5et
    .end array-data
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)[B
    .locals 1
    .param p0    # Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mIvt:[B

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)Z
    .locals 1
    .param p0    # Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mIsDockingCanceled:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;Z)Z
    .locals 0
    .param p0    # Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mIsDockingCanceled:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)I
    .locals 1
    .param p0    # Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mDockingX:I

    return v0
.end method

.method static synthetic access$1102(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;I)I
    .locals 0
    .param p0    # Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;
    .param p1    # I

    iput p1, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mDockingX:I

    return p1
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)I
    .locals 1
    .param p0    # Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mDockingY:I

    return v0
.end method

.method static synthetic access$1202(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;I)I
    .locals 0
    .param p0    # Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;
    .param p1    # I

    iput p1, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mDockingY:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0    # Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mDecor:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)Z
    .locals 1
    .param p0    # Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->isInputMethodShowing()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)I
    .locals 1
    .param p0    # Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mStatusBarHeight:I

    return v0
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)Z
    .locals 1
    .param p0    # Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mConsumeTouchEvent:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;Z)Z
    .locals 0
    .param p0    # Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mConsumeTouchEvent:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)Z
    .locals 1
    .param p0    # Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->forceHideInputMethod()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)Lcom/android/internal/policy/impl/multiwindow/Docking;
    .locals 1
    .param p0    # Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mDocking:Lcom/android/internal/policy/impl/multiwindow/Docking;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$OnTouchDownListener;
    .locals 1
    .param p0    # Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mTouchDownListener:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$OnTouchDownListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)Landroid/os/SystemVibrator;
    .locals 1
    .param p0    # Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mVibrator:Landroid/os/SystemVibrator;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)Z
    .locals 1
    .param p0    # Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mMoving:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;Z)Z
    .locals 0
    .param p0    # Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mMoving:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)I
    .locals 1
    .param p0    # Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mDockingMargin:I

    return v0
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)V
    .locals 0
    .param p0    # Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->dismissGuide()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$OnMoveListener;
    .locals 1
    .param p0    # Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mMoveListener:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$OnMoveListener;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)Landroid/view/GestureDetector;
    .locals 1
    .param p0    # Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mGestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$OnItemClickListener;
    .locals 1
    .param p0    # Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mItemClickListener:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;
    .locals 1
    .param p0    # Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mMenuView:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;)Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;
    .locals 0
    .param p0    # Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;
    .param p1    # Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;

    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mMenuView:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)V
    .locals 0
    .param p0    # Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->validateGuideView()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)Lcom/samsung/android/multiwindow/ui/GuideView;
    .locals 1
    .param p0    # Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)Landroid/graphics/Rect;
    .locals 1
    .param p0    # Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mBoundsRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)I
    .locals 1
    .param p0    # Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mLastX:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;I)I
    .locals 0
    .param p0    # Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;
    .param p1    # I

    iput p1, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mLastX:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)I
    .locals 1
    .param p0    # Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mFirstX:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;I)I
    .locals 0
    .param p0    # Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;
    .param p1    # I

    iput p1, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mFirstX:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)I
    .locals 1
    .param p0    # Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mLastY:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;I)I
    .locals 0
    .param p0    # Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;
    .param p1    # I

    iput p1, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mLastY:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)I
    .locals 1
    .param p0    # Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mFirstY:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;I)I
    .locals 0
    .param p0    # Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;
    .param p1    # I

    iput p1, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mFirstY:I

    return p1
.end method

.method private dismissGuide()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/ui/GuideView;->dismiss()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    const v1, 0x108068a

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/ui/GuideView;->setGuideResource(I)V

    :cond_0
    return-void
.end method

.method private forceHideInputMethod()Z
    .locals 2

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->forceHideSoftInput()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private generateLayoutParam()Landroid/view/WindowManager$LayoutParams;
    .locals 3

    const/4 v2, -0x2

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const-string v1, "MultiWindow Controller"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const v1, 0x800033

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 v1, 0x3ee

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mToken:Landroid/os/IBinder;

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    const/16 v1, 0x208

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v2, 0x200000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    return-object v0
.end method

.method private isInputMethodShowing()Z
    .locals 2

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isInputMethodShown()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private refreshBackground()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mIconView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mDecor:Landroid/widget/FrameLayout;

    const v1, 0x108065a

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method private startDismissMenuTimer()V
    .locals 4

    const/16 v2, 0x64

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mTimerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mTimerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mTimerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mTimerHandler:Landroid/os/Handler;

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private validateGuideView()V
    .locals 6

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mContext:Landroid/content/Context;

    instance-of v3, v3, Landroid/app/Activity;

    if-eqz v3, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v3, "HeaderWindow"

    const-string v4, "showGuide: attached PhoneWindow is already destroyed."

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    if-nez v3, :cond_0

    new-instance v3, Lcom/samsung/android/multiwindow/ui/GuideView;

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mToken:Landroid/os/IBinder;

    invoke-direct {v3, v4, v5}, Lcom/samsung/android/multiwindow/ui/GuideView;-><init>(Landroid/content/Context;Landroid/os/IBinder;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    const/high16 v4, 0x600000

    invoke-virtual {v3, v4}, Lcom/samsung/android/multiwindow/ui/GuideView;->setPrivateFlags(I)V

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    const v4, 0x108068a

    invoke-virtual {v3, v4}, Lcom/samsung/android/multiwindow/ui/GuideView;->setGuideResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public cancelDismissMenuTimer()V
    .locals 2

    const/16 v1, 0x64

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mTimerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mTimerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mAttached:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mDecor:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mShowing:Z

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mAttached:Z

    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->dismissMenu(Z)V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->dismissGuide()V

    return-void
.end method

.method public dismissMenu(Z)V
    .locals 13
    .param p1    # Z

    const-wide/16 v11, 0x190

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000

    const/high16 v1, 0x3f800000

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mMenuView:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;

    if-eqz v2, :cond_0

    if-eqz p1, :cond_1

    new-instance v10, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x0

    invoke-direct {v10, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v9, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    invoke-direct {v9, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const v2, 0x3dcccccd

    move v3, v1

    move v4, v1

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    invoke-virtual {v0, v11, v12}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v9, v11, v12}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v10, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v1, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$5;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$5;-><init>(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)V

    invoke-virtual {v10, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mMenuView:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;->mContents:Landroid/view/View;
    invoke-static {v1}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;->access$2700(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mMenuView:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;->dismiss()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mMenuView:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;

    goto :goto_0
.end method

.method public getHeaderDrawableHeight()I
    .locals 3

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x108065a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hide()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mShowing:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mShowing:Z

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mDecor:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->dismiss()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mSoundPool:Landroid/media/SoundPool;

    :cond_0
    return-void
.end method

.method public setFocused(Z)V
    .locals 1
    .param p1    # Z

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mFocused:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mFocused:Z

    invoke-direct {p0}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->refreshBackground()V

    goto :goto_0
.end method

.method public setOnItemClickListener(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$OnItemClickListener;)V
    .locals 0
    .param p1    # Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$OnItemClickListener;

    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mItemClickListener:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$OnItemClickListener;

    return-void
.end method

.method public setOnMoveListener(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$OnMoveListener;)V
    .locals 0
    .param p1    # Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$OnMoveListener;

    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mMoveListener:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$OnMoveListener;

    return-void
.end method

.method public setOnTouchDownListener(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$OnTouchDownListener;)V
    .locals 0
    .param p1    # Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$OnTouchDownListener;

    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mTouchDownListener:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$OnTouchDownListener;

    return-void
.end method

.method public show(Landroid/graphics/Rect;)V
    .locals 8
    .param p1    # Landroid/graphics/Rect;

    const/16 v7, 0x31

    const/4 v4, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mAttached:Z

    if-nez v2, :cond_2

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mAttached:Z

    invoke-direct {p0}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->generateLayoutParam()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mDecor:Landroid/widget/FrameLayout;

    if-nez v2, :cond_0

    new-instance v2, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mDecor:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mIconView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mIconView:Landroid/widget/ImageView;

    const v3, 0x108067d

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mDecor:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v6}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mDecor:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v6}, Landroid/view/View;->setClickable(Z)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mDecor:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->resetResolvedLayoutDirection()V

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mDecor:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v5}, Landroid/view/View;->setLayoutDirection(I)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x11

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mDecor:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v2, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->refreshBackground()V

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mDecor:Landroid/widget/FrameLayout;

    new-instance v3, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$3;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$3;-><init>(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mDecor:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mDecor:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mShowing:Z

    if-nez v2, :cond_1

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mShowing:Z

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mDecor:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mDecor:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mDecor:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public showMenu(Z)V
    .locals 8
    .param p1    # Z

    const/4 v4, 0x0

    const/high16 v2, 0x3f800000

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mMenuView:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mToken:Landroid/os/IBinder;

    invoke-direct {v0, v1, v3}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;-><init>(Landroid/content/Context;Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mMenuView:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mMenuView:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;

    new-instance v1, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$4;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$4;-><init>(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mMenuView:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mBoundsRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mDecor:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;->setTopMargin(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mMenuView:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mBoundsRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;->setLeftMargin(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mMenuView:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;->setParentRectWidth(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x105015e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v7

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mMenuView:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v0, v7, v1}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;->show(II)V

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->startDismissMenuTimer()V

    :cond_1
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mHeaderButtonSoundId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mHeaderButtonSoundId:I

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    :cond_2
    return-void
.end method

.method public startDragMode(Z)V
    .locals 2
    .param p1    # Z

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->dismissMenu(Z)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mDecor:Landroid/widget/FrameLayout;

    const v1, 0x108065a

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mIconView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->refreshBackground()V

    goto :goto_0
.end method
