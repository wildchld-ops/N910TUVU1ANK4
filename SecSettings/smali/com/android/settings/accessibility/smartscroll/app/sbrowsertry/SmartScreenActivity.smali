.class public Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;
.super Landroid/app/Activity;
.source "SmartScreenActivity.java"


# static fields
.field public static y:I


# instance fields
.field private FACE_DETECT_NOTI_DELAY:I

.field private actionBar:Landroid/app/ActionBar;

.field private guideTextView:Landroid/view/View;

.field private mCurrentGuide:I

.field private mFaceRecogRunnable:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field protected mHelpDialog:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpAnimatedDialog;

.field protected mHelpDialog2:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpAnimatedDialog;

.field private mScrollMode:I

.field private mScrollReady:I

.field private mScrollViewListener:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView$ScrollListener;

.field private mSmartScrollSettings:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScrollSettings;

.field protected mVerticalScrollView:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;

.field private negative:Landroid/widget/ImageButton;

.field private positive:Landroid/widget/ImageButton;

.field private seekBar:Landroid/widget/SeekBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x17

    sput v0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->y:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v1, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->mSmartScrollSettings:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScrollSettings;

    iput-object v1, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->negative:Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->positive:Landroid/widget/ImageButton;

    iput v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->mScrollReady:I

    iput v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->mScrollMode:I

    iput-object v1, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->mVerticalScrollView:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;

    iput-object v1, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->mHelpDialog:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpAnimatedDialog;

    iput-object v1, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->mHelpDialog2:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpAnimatedDialog;

    iput v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->mCurrentGuide:I

    const/16 v0, 0xbb8

    iput v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->FACE_DETECT_NOTI_DELAY:I

    iput-object v1, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->mHandler:Landroid/os/Handler;

    iput-object v1, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->mFaceRecogRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity$1;-><init>(Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->mScrollViewListener:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView$ScrollListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;)Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScrollSettings;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->mSmartScrollSettings:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScrollSettings;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->mScrollReady:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->mScrollReady:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->mCurrentGuide:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->mCurrentGuide:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->guideTextView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->guideTextView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->mScrollMode:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->mFaceRecogRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->FACE_DETECT_NOTI_DELAY:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;)Landroid/widget/SeekBar;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->seekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method public static isTablet(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected getMaxScrollOffset()I
    .locals 8

    const/4 v2, 0x0

    const v5, 0x7f0b027b

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getHeight()I

    move-result v1

    const-string v5, "SmartScreenActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SCROLL - getMaxScrollOffset : mRscImageHeight="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mScreenHeight="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v5, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->mCurrentGuide:I

    const/16 v6, 0x15

    if-ne v5, v6, :cond_1

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f02f1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v3, v5

    add-int/lit8 v5, v1, -0x4b

    sub-int/2addr v5, v3

    if-le v0, v5, :cond_0

    add-int/lit8 v5, v1, -0x4b

    sub-int/2addr v5, v3

    sub-int v2, v0, v5

    :cond_0
    :goto_0
    return v2

    :cond_1
    add-int/lit8 v5, v1, -0x4b

    if-le v0, v5, :cond_0

    add-int/lit8 v5, v1, -0x4b

    sub-int v2, v0, v5

    goto :goto_0
.end method

.method public getSmartScrollMode()I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->mSmartScrollSettings:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScrollSettings;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScrollSettings;->checkSmartScrollMode()I

    move-result v0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 11

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v9, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->mCurrentGuide:I

    sparse-switch v9, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    const v9, 0x7f0b0279

    invoke-virtual {p0, v9}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_0

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const v9, 0x7f0b0279

    invoke-virtual {p0, v9}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v9, 0x1

    iput-boolean v9, v4, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f02002c

    invoke-static {v9, v10, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    const v9, 0x7f0b0279

    invoke-virtual {p0, v9}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :sswitch_1
    const v9, 0x7f0b027b

    invoke-virtual {p0, v9}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v9, 0x1

    iput-boolean v9, v6, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f02002c

    invoke-static {v9, v10, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    const v9, 0x7f0b027b

    invoke-virtual {p0, v9}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    invoke-virtual {v9, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :sswitch_2
    const v9, 0x7f0b027b

    invoke-virtual {p0, v9}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v9, 0x1

    iput-boolean v9, v7, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f02002c

    invoke-static {v9, v10, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    const v9, 0x7f0b027b

    invoke-virtual {p0, v9}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    invoke-virtual {v9, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget v9, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->mScrollMode:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    iget-object v9, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->guideTextView:Landroid/view/View;

    const v10, 0x7f0b0289

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v9, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->guideTextView:Landroid/view/View;

    const v10, 0x7f0b0289

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    const v10, 0x7f020401

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :cond_1
    iget-object v9, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->guideTextView:Landroid/view/View;

    const v10, 0x7f0b0289

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v9, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->guideTextView:Landroid/view/View;

    const v10, 0x7f0b0289

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    const v10, 0x7f0205b1

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :sswitch_3
    invoke-virtual {p0}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->showSensitivityText()V

    const v9, 0x7f0b027b

    invoke-virtual {p0, v9}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v9, 0x1

    iput-boolean v9, v5, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f02002c

    invoke-static {v9, v10, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    const v9, 0x7f0b027b

    invoke-virtual {p0, v9}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0xb -> :sswitch_1
        0xc -> :sswitch_2
        0xd -> :sswitch_1
        0x15 -> :sswitch_3
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/4 v8, 0x0

    const v7, 0x7f040100

    const v5, 0x7f0400ff

    const/4 v6, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance v2, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScrollSettings;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v4}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScrollSettings;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->mSmartScrollSettings:Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScrollSettings;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity$2;

    invoke-direct {v2, p0}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity$2;-><init>(Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;)V

    iput-object v2, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->mFaceRecogRunnable:Ljava/lang/Runnable;

    invoke-static {p0}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->actionBar:Landroid/app/ActionBar;

    iget-object v2, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v2}, Landroid/app/ActionBar;->hide()V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.android.settings.accessibility.smartscroll.app.sbrowsertry.GUIDE_SMART_STAY"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v5}, Landroid/app/Activity;->setContentView(I)V

    const v2, 0x7f0b0279

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iput v6, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->mCurrentGuide:I

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v2, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->guideTextView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->guideTextView:Landroid/view/View;

    invoke-virtual {p0, v2, v4}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->showDialog(Landroid/view/View;Z)V

    iget-object v2, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->mFaceRecogRunnable:Ljava/lang/Runnable;

    iget v4, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->FACE_DETECT_NOTI_DELAY:I

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v2, "com.android.settings.accessibility.smartscroll.app.sbrowsertry.GUIDE_SMART_ROTATION"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, v5}, Landroid/app/Activity;->setContentView(I)V

    const v2, 0x7f0b0279

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v2, 0x2

    iput v2, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->mCurrentGuide:I

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v2, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->guideTextView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->guideTextView:Landroid/view/View;

    invoke-virtual {p0, v2, v4}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->showDialog(Landroid/view/View;Z)V

    iget-object v2, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->mFaceRecogRunnable:Ljava/lang/Runnable;

    iget v4, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->FACE_DETECT_NOTI_DELAY:I

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    const-string v2, "com.android.settings.accessibility.smartscroll.app.sbrowsertry.GUIDE_SMART_SCROLL_FACE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0, v5}, Landroid/app/Activity;->setContentView(I)V

    const/16 v2, 0xb

    iput v2, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->mCurrentGuide:I

    const v2, 0x7f0b027b

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    const v2, 0x7f0b027a

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;

    iput-object v2, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->mVerticalScrollView:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v2, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->guideTextView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->guideTextView:Landroid/view/View;

    invoke-virtual {p0, v2, v4}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->showDialog(Landroid/view/View;Z)V

    iput v6, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->mScrollMode:I

    iget-object v2, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->mVerticalScrollView:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;

    iget-object v3, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->mScrollViewListener:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView$ScrollListener;

    invoke-virtual {v2, v3}, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;->setScrollLintener(Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView$ScrollListener;)V

    iget-object v2, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->mVerticalScrollView:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;

    iget v3, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->mScrollMode:I

    invoke-virtual {v2, v3}, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;->setSmartScroll(I)V

    goto :goto_0

    :cond_4
    const-string v2, "com.android.settings.accessibility.smartscroll.app.sbrowsertry.GUIDE_SMART_SCROLL_TILT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0, v5}, Landroid/app/Activity;->setContentView(I)V

    const/16 v2, 0xb

    iput v2, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->mCurrentGuide:I

    const v2, 0x7f0b027b

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    const v2, 0x7f0b027a

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;

    iput-object v2, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->mVerticalScrollView:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v2, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->guideTextView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->guideTextView:Landroid/view/View;

    invoke-virtual {p0, v2, v4}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->showDialog(Landroid/view/View;Z)V

    const/4 v2, 0x2

    iput v2, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->mScrollMode:I

    iget-object v2, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->mVerticalScrollView:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;

    iget-object v3, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->mScrollViewListener:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView$ScrollListener;

    invoke-virtual {v2, v3}, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;->setScrollLintener(Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView$ScrollListener;)V

    iget-object v2, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->mVerticalScrollView:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;

    iget v3, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->mScrollMode:I

    invoke-virtual {v2, v3}, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;->setSmartScroll(I)V

    goto/16 :goto_0

    :cond_5
    const-string v2, "com.android.settings.accessibility.smartscroll.app.sbrowsertry.SETTING_SCROLL_SENSITIVITY"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x7f040102

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->showSensitivityText()V

    const/16 v2, 0x15

    iput v2, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->mCurrentGuide:I

    const v2, 0x7f0b0284

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->seekBar:Landroid/widget/SeekBar;

    const v2, 0x7f0b0283

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->negative:Landroid/widget/ImageButton;

    const v2, 0x7f0b0285

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->positive:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->negative:Landroid/widget/ImageButton;

    new-instance v3, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity$3;

    invoke-direct {v3, p0}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity$3;-><init>(Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->positive:Landroid/widget/ImageButton;

    new-instance v3, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity$4;

    invoke-direct {v3, p0}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity$4;-><init>(Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->seekBar:Landroid/widget/SeekBar;

    const/16 v3, 0x1d

    invoke-virtual {v2, v3}, Landroid/widget/AbsSeekBar;->setMax(I)V

    iget-object v2, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setMin(I)V

    iget-object v2, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "smart_scroll_sensitivity"

    const/16 v5, 0xf

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v2, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->seekBar:Landroid/widget/SeekBar;

    new-instance v3, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity$5;

    invoke-direct {v3, p0}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity$5;-><init>(Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->getSmartScrollMode()I

    move-result v2

    iput v2, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->mScrollMode:I

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f091bc2

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    const v2, 0x7f0b027a

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;

    iput-object v2, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->mVerticalScrollView:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;

    iget-object v2, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->mVerticalScrollView:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;

    iget-object v3, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->mScrollViewListener:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView$ScrollListener;

    invoke-virtual {v2, v3}, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;->setScrollLintener(Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView$ScrollListener;)V

    iget-object v2, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->mVerticalScrollView:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;

    iget v3, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->mScrollMode:I

    invoke-virtual {v2, v3}, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;->setSmartScroll(I)V

    invoke-static {p0}, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v2, v6}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v2, v6}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->actionBar:Landroid/app/ActionBar;

    const v3, 0x7f091bc3

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setTitle(I)V

    iget-object v2, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v2}, Landroid/app/ActionBar;->show()V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 6

    const/4 v5, 0x0

    const-string v3, "SmartScreenActivity"

    const-string v4, "SCROLL - onDestroy() "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->mHandler:Landroid/os/Handler;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->mFaceRecogRunnable:Ljava/lang/Runnable;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->mFaceRecogRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v5, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->mHandler:Landroid/os/Handler;

    :cond_0
    iget-object v3, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->mHelpDialog:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpAnimatedDialog;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->mHelpDialog:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpAnimatedDialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    iput-object v5, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->mHelpDialog:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpAnimatedDialog;

    :cond_1
    iget-object v3, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->mHelpDialog2:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpAnimatedDialog;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->mHelpDialog2:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpAnimatedDialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    iput-object v5, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->mHelpDialog2:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpAnimatedDialog;

    :cond_2
    iget-object v3, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->mVerticalScrollView:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->mVerticalScrollView:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;

    invoke-virtual {v3}, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;->stopSmartScroll()V

    iput-object v5, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->mVerticalScrollView:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpScrollView;

    :cond_3
    const v3, 0x7f0b027b

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_4
    const v3, 0x7f0b0279

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public setSensitivity(I)V
    .locals 3

    const-string v0, "SmartScreenActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set sentivity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mScreenHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "smart_scroll_sensitivity"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method protected showDialog(Landroid/view/View;Z)V
    .locals 3

    const/4 v2, 0x1

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->mHelpDialog2:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpAnimatedDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->mHelpDialog2:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpAnimatedDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    new-instance v0, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpAnimatedDialog;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpAnimatedDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->mHelpDialog2:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpAnimatedDialog;

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->mHelpDialog2:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpAnimatedDialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->mHelpDialog2:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpAnimatedDialog;

    sget-object v1, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpDialog$TouchMode;->TRANSPARENT:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpDialog$TouchMode;

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpDialog;->setTouchTransparencyMode(Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpDialog$TouchMode;)V

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->mHelpDialog2:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpAnimatedDialog;

    invoke-virtual {v0, v2}, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpDialog;->setShowWrongInputToast(Z)V

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->mHelpDialog2:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpAnimatedDialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->mHelpDialog2:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpAnimatedDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->mHelpDialog:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpAnimatedDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->mHelpDialog:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpAnimatedDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_2
    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->mHelpDialog2:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpAnimatedDialog;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->mHelpDialog2:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpAnimatedDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_3
    new-instance v0, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpAnimatedDialog;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpAnimatedDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->mHelpDialog:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpAnimatedDialog;

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->mHelpDialog:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpAnimatedDialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->mHelpDialog:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpAnimatedDialog;

    sget-object v1, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpDialog$TouchMode;->TRANSPARENT:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpDialog$TouchMode;

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpDialog;->setTouchTransparencyMode(Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpDialog$TouchMode;)V

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->mHelpDialog:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpAnimatedDialog;

    invoke-virtual {v0, v2}, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpDialog;->setShowWrongInputToast(Z)V

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->mHelpDialog:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpAnimatedDialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/app/sbrowsertry/SmartScreenActivity;->mHelpDialog:Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpAnimatedDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method protected showSensitivityText()V
    .locals 0

    return-void
.end method
