.class public Lcom/android/settings/accessibilitywidget/SViewTorchLightMenu;
.super Landroid/app/Activity;
.source "SViewTorchLightMenu.java"


# instance fields
.field private mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

.field private mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

.field private mImage_torch:Landroid/widget/ImageView;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mTorchEnabled:Z

.field private final mTorchLightObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/accessibilitywidget/SViewTorchLightMenu;->mTorchEnabled:Z

    new-instance v0, Lcom/android/settings/accessibilitywidget/SViewTorchLightMenu$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibilitywidget/SViewTorchLightMenu$4;-><init>(Lcom/android/settings/accessibilitywidget/SViewTorchLightMenu;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/accessibilitywidget/SViewTorchLightMenu;->mTorchLightObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accessibilitywidget/SViewTorchLightMenu;)Z
    .locals 1
    .param p0    # Lcom/android/settings/accessibilitywidget/SViewTorchLightMenu;

    iget-boolean v0, p0, Lcom/android/settings/accessibilitywidget/SViewTorchLightMenu;->mTorchEnabled:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/accessibilitywidget/SViewTorchLightMenu;Z)Z
    .locals 0
    .param p0    # Lcom/android/settings/accessibilitywidget/SViewTorchLightMenu;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/settings/accessibilitywidget/SViewTorchLightMenu;->mTorchEnabled:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/accessibilitywidget/SViewTorchLightMenu;)V
    .locals 0
    .param p0    # Lcom/android/settings/accessibilitywidget/SViewTorchLightMenu;

    invoke-direct {p0}, Lcom/android/settings/accessibilitywidget/SViewTorchLightMenu;->updateViews()V

    return-void
.end method

.method private updateViews()V
    .locals 3

    const-string v0, ""

    iget-object v1, p0, Lcom/android/settings/accessibilitywidget/SViewTorchLightMenu;->mImage_torch:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/accessibilitywidget/SViewTorchLightMenu;->mTorchEnabled:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/accessibilitywidget/SViewTorchLightMenu;->mImage_torch:Landroid/widget/ImageView;

    const v2, 0x7f02069b

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    const v1, 0x7f090ecb

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibilitywidget/SViewTorchLightMenu;->mImage_torch:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/accessibilitywidget/SViewTorchLightMenu;->mImage_torch:Landroid/widget/ImageView;

    const v2, 0x7f02069a

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method


# virtual methods
.method public CoverOpen()V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public getBackgroundColor()I
    .locals 11

    const/16 v10, 0x77

    const/16 v9, 0x6b

    const/16 v8, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "sview_color_use_all"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v6, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    if-ne v3, v7, :cond_0

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "sview_color_random"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    invoke-static {v6, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    :cond_0
    :goto_0
    const/16 v4, 0xef

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v5

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v6

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    invoke-static {v4, v5, v6, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "s_vew_cover_background_color"

    invoke-static {v8, v9, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "sview_bg_display_random"

    invoke-static {v8, v9, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 22
    .param p1    # Landroid/os/Bundle;

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v18, "statusbar"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/app/StatusBarManager;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/accessibilitywidget/SViewTorchLightMenu;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "torch_light"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    if-eqz v18, :cond_3

    const/16 v18, 0x1

    :goto_0
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/accessibilitywidget/SViewTorchLightMenu;->mTorchEnabled:Z

    const-string v18, "layout_inflater"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/LayoutInflater;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/accessibilitywidget/SViewTorchLightMenu;->mInflater:Landroid/view/LayoutInflater;

    const/high16 v12, 0x4080000

    const/high16 v17, 0x400000

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "automatic_unlock"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    const-string v18, "keyguard"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/KeyguardManager;

    invoke-virtual {v14}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v6

    if-nez v6, :cond_0

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v5, v0, :cond_0

    or-int v12, v12, v17

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move/from16 v19, v0

    const/high16 v20, 0x100000

    or-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v18

    const-wide/16 v19, 0x1770

    move-wide/from16 v0, v19

    move-object/from16 v2, v18

    iput-wide v0, v2, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v18

    const-wide/16 v19, 0x0

    move-wide/from16 v0, v19

    move-object/from16 v2, v18

    iput-wide v0, v2, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v18

    const/16 v19, -0x1

    const/16 v20, -0x1

    invoke-virtual/range {v18 .. v20}, Landroid/view/Window;->setLayout(II)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v18

    const/16 v19, 0x2

    invoke-virtual/range {v18 .. v19}, Landroid/view/Window;->clearFlags(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v18

    new-instance v19, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-virtual/range {v18 .. v19}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v7, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    new-instance v18, Lcom/samsung/android/sdk/cover/ScoverManager;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/accessibilitywidget/SViewTorchLightMenu;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibilitywidget/SViewTorchLightMenu;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    move-object/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v19

    const/16 v20, 0x1

    invoke-virtual/range {v18 .. v20}, Lcom/samsung/android/sdk/cover/ScoverManager;->setCoverModeToWindow(Landroid/view/Window;I)V

    const v18, 0x7f040051

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(I)V

    const v18, 0x7f0b0105

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout;

    const v18, 0x7f0b0106

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isSViewCover2014Supported(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "sview_color_wallpaper"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v3, v0, :cond_4

    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->getSViewWallpaperDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v18, 0x4d

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v18 .. v21}, Landroid/graphics/Color;->argb(IIII)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_1
    :goto_1
    const v18, 0x7f0b0102

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    const v18, 0x7f090ecb

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v18, 0x7f0b00b0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageButton;

    new-instance v18, Lcom/android/settings/accessibilitywidget/SViewTorchLightMenu$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/accessibilitywidget/SViewTorchLightMenu$1;-><init>(Lcom/android/settings/accessibilitywidget/SViewTorchLightMenu;)V

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v18, 0x7f0b010f

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/accessibilitywidget/SViewTorchLightMenu;->mImage_torch:Landroid/widget/ImageView;

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/accessibilitywidget/SViewTorchLightMenu;->updateViews()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accessibilitywidget/SViewTorchLightMenu;->mImage_torch:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    new-instance v19, Lcom/android/settings/accessibilitywidget/SViewTorchLightMenu$2;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/accessibilitywidget/SViewTorchLightMenu$2;-><init>(Lcom/android/settings/accessibilitywidget/SViewTorchLightMenu;)V

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v15, Lcom/samsung/android/sdk/cover/Scover;

    invoke-direct {v15}, Lcom/samsung/android/sdk/cover/Scover;-><init>()V

    const/4 v11, 0x1

    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Lcom/samsung/android/sdk/cover/Scover;->initialize(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_2
    if-eqz v11, :cond_2

    new-instance v18, Lcom/samsung/android/sdk/cover/ScoverManager;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/accessibilitywidget/SViewTorchLightMenu;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    new-instance v18, Lcom/android/settings/accessibilitywidget/SViewTorchLightMenu$3;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/accessibilitywidget/SViewTorchLightMenu$3;-><init>(Lcom/android/settings/accessibilitywidget/SViewTorchLightMenu;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/accessibilitywidget/SViewTorchLightMenu;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    :cond_2
    return-void

    :cond_3
    const/16 v18, 0x0

    goto/16 :goto_0

    :cond_4
    packed-switch v3, :pswitch_data_0

    const v18, 0x7f02069d

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_3
    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v18 .. v21}, Landroid/graphics/Color;->argb(IIII)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_1

    :pswitch_0
    const v18, 0x7f02069e

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    :pswitch_1
    const v18, 0x7f02069f

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    :pswitch_2
    const v18, 0x7f0206a0

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    :pswitch_3
    const v18, 0x7f0206a1

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    :pswitch_4
    const v18, 0x7f0206a2

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    :pswitch_5
    const v18, 0x7f0206a3

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    :pswitch_6
    const v18, 0x7f0206a4

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibilitywidget/SViewTorchLightMenu;->getBackgroundColor()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "sview_color_wallpaper"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    if-eqz v18, :cond_6

    const/4 v13, 0x1

    :goto_4
    if-eqz v13, :cond_1

    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->getSViewWallpaperDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v18, 0x4d

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v18 .. v21}, Landroid/graphics/Color;->argb(IIII)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_1

    :cond_6
    const/4 v13, 0x0

    goto :goto_4

    :catch_0
    move-exception v4

    const/4 v11, 0x0

    goto/16 :goto_2

    :catch_1
    move-exception v4

    const/4 v11, 0x0

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/android/settings/accessibilitywidget/SViewTorchLightMenu;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibilitywidget/SViewTorchLightMenu;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v1, p0, Lcom/android/settings/accessibilitywidget/SViewTorchLightMenu;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->unregisterListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V

    :cond_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibilitywidget/SViewTorchLightMenu;->mTorchLightObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/settings/accessibilitywidget/SViewTorchLightMenu;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/accessibilitywidget/SViewTorchLightMenu;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onResume()V
    .locals 5

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v1, p0, Lcom/android/settings/accessibilitywidget/SViewTorchLightMenu;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/accessibilitywidget/SViewTorchLightMenu;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v2, p0, Lcom/android/settings/accessibilitywidget/SViewTorchLightMenu;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/cover/ScoverManager;->registerListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/accessibilitywidget/SViewTorchLightMenu;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/settings/accessibilitywidget/SViewTorchLightMenu;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/cover/ScoverState;->getSwitchState()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/accessibilitywidget/SViewTorchLightMenu;->CoverOpen()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "torch_light"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/accessibilitywidget/SViewTorchLightMenu;->mTorchLightObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/settings/accessibilitywidget/SViewTorchLightMenu;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/accessibilitywidget/SViewTorchLightMenu;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/high16 v2, 0x10000

    invoke-virtual {v1, v2}, Landroid/app/StatusBarManager;->disable(I)V

    goto :goto_0
.end method
