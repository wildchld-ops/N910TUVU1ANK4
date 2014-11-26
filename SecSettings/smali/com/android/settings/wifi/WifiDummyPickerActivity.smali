.class public final Lcom/android/settings/wifi/WifiDummyPickerActivity;
.super Landroid/app/Activity;
.source "WifiDummyPickerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field FLAG_SAMSUNGACCOUNT_FOR_WIFISETUPWIZARD:Z

.field blankLayout:Landroid/widget/LinearLayout;

.field private bottomLinearLayout:Landroid/widget/LinearLayout;

.field center:Landroid/widget/RelativeLayout;

.field left:Landroid/widget/RelativeLayout;

.field private mAdvancedWifiSettings:Lcom/android/settings/wifi/AdvancedWifiSettings;

.field private mFilter:Landroid/content/IntentFilter;

.field private mIsFromAdvanced:Z

.field private mIsFromWifiTimer:Z

.field private mIsGrandeDisplay:Z

.field private mIsLandscape:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

.field private mWifiTimer:Lcom/android/settings/wifi/WifiTimer;

.field private nextButton:Landroid/widget/Button;

.field private previousButton:Landroid/widget/Button;

.field right:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiDummyPickerActivity;->mIsLandscape:Z

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiDummyPickerActivity;->mIsGrandeDisplay:Z

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiDummyPickerActivity;->FLAG_SAMSUNGACCOUNT_FOR_WIFISETUPWIZARD:Z

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiDummyPickerActivity;->mIsFromAdvanced:Z

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiDummyPickerActivity;->mIsFromWifiTimer:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiDummyPickerActivity;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p0    # Lcom/android/settings/wifi/WifiDummyPickerActivity;
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/WifiDummyPickerActivity;->handleEvent(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public static getDisplayWidth(Landroid/content/Context;)I
    .locals 5

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    :try_start_0
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    const-class v2, Landroid/view/Display;

    const-string v3, "getRawWidth"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_0
.end method

.method private handleEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget-boolean v3, p0, Lcom/android/settings/wifi/WifiDummyPickerActivity;->FLAG_SAMSUNGACCOUNT_FOR_WIFISETUPWIZARD:Z

    if-eqz v3, :cond_0

    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "networkInfo"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/android/settings/wifi/WifiDummyPickerActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/settings/wifi/WifiDummyPickerActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/view/View;->setFocusable(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/settings/wifi/WifiDummyPickerActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/settings/wifi/WifiDummyPickerActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_0
.end method

.method private initializeToAdvnaced()V
    .locals 4

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b06cd

    invoke-virtual {v0, v2}, Landroid/view/View;->setId(I)V

    new-instance v2, Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-direct {v2}, Lcom/android/settings/wifi/AdvancedWifiSettings;-><init>()V

    iput-object v2, p0, Lcom/android/settings/wifi/WifiDummyPickerActivity;->mAdvancedWifiSettings:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiDummyPickerActivity;->mAdvancedWifiSettings:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method private initializeToWifi()V
    .locals 4

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b06cd

    invoke-virtual {v0, v2}, Landroid/view/View;->setId(I)V

    new-instance v2, Lcom/android/settings/wifi/WifiSettings;

    invoke-direct {v2}, Lcom/android/settings/wifi/WifiSettings;-><init>()V

    iput-object v2, p0, Lcom/android/settings/wifi/WifiDummyPickerActivity;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiDummyPickerActivity;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method private initializeToWifiTimer()V
    .locals 4

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b06cd

    invoke-virtual {v0, v2}, Landroid/view/View;->setId(I)V

    new-instance v2, Lcom/android/settings/wifi/WifiTimer;

    invoke-direct {v2}, Lcom/android/settings/wifi/WifiTimer;-><init>()V

    iput-object v2, p0, Lcom/android/settings/wifi/WifiDummyPickerActivity;->mWifiTimer:Lcom/android/settings/wifi/WifiTimer;

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiDummyPickerActivity;->mWifiTimer:Lcom/android/settings/wifi/WifiTimer;

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method private setGrandeDisplayView(Z)V
    .locals 10
    .param p1    # Z

    const/4 v9, 0x0

    const/16 v8, 0x28

    const/high16 v7, 0x3f800000

    const/4 v6, 0x0

    const/4 v5, -0x1

    const v3, 0x7f0b06ca

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/settings/wifi/WifiDummyPickerActivity;->blankLayout:Landroid/widget/LinearLayout;

    const v3, 0x7f0b06cb

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/android/settings/wifi/WifiDummyPickerActivity;->left:Landroid/widget/RelativeLayout;

    const v3, 0x7f0b06cf

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/android/settings/wifi/WifiDummyPickerActivity;->right:Landroid/widget/RelativeLayout;

    const v3, 0x7f0b06cc

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/android/settings/wifi/WifiDummyPickerActivity;->center:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiDummyPickerActivity;->blankLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiDummyPickerActivity;->left:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/android/settings/wifi/WifiDummyPickerActivity;->blankLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiDummyPickerActivity;->right:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/android/settings/wifi/WifiDummyPickerActivity;->blankLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiDummyPickerActivity;->center:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    if-eqz p1, :cond_0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v6, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v6, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x41000000

    invoke-direct {v0, v6, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iget-object v3, p0, Lcom/android/settings/wifi/WifiDummyPickerActivity;->left:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0207a0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/android/settings/wifi/WifiDummyPickerActivity;->right:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0207a2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/android/settings/wifi/WifiDummyPickerActivity;->left:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/android/settings/wifi/WifiDummyPickerActivity;->right:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/android/settings/wifi/WifiDummyPickerActivity;->center:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    iget-object v3, p0, Lcom/android/settings/wifi/WifiDummyPickerActivity;->blankLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiDummyPickerActivity;->left:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/android/settings/wifi/WifiDummyPickerActivity;->blankLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiDummyPickerActivity;->center:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/android/settings/wifi/WifiDummyPickerActivity;->blankLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiDummyPickerActivity;->right:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void

    :cond_0
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v8, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x9

    invoke-virtual {v1, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v8, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xb

    invoke-virtual {v2, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {p0}, Lcom/android/settings/wifi/WifiDummyPickerActivity;->getDisplayWidth(Landroid/content/Context;)I

    move-result v3

    add-int/lit8 v3, v3, -0x50

    invoke-direct {v0, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lcom/android/settings/wifi/WifiDummyPickerActivity;->left:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v9}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/android/settings/wifi/WifiDummyPickerActivity;->right:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v9}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/android/settings/wifi/WifiDummyPickerActivity;->left:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/android/settings/wifi/WifiDummyPickerActivity;->right:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/android/settings/wifi/WifiDummyPickerActivity;->center:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :sswitch_1
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f0b00b1 -> :sswitch_1
        0x7f0b06ce -> :sswitch_0
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1    # Landroid/content/res/Configuration;

    const/4 v0, 0x1

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiDummyPickerActivity;->mIsLandscape:Z

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiDummyPickerActivity;->mIsGrandeDisplay:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiDummyPickerActivity;->mIsLandscape:Z

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiDummyPickerActivity;->setGrandeDisplayView(Z)V

    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1    # Landroid/os/Bundle;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v1, "WifiDummyPickerActivity"

    const-string v4, "onCreate"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x7f0402a5

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    const-string v1, "grande"

    const-string v4, "ro.build.scafe.size"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiDummyPickerActivity;->mIsGrandeDisplay:Z

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_2

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiDummyPickerActivity;->mIsLandscape:Z

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiDummyPickerActivity;->mIsGrandeDisplay:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiDummyPickerActivity;->mIsLandscape:Z

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiDummyPickerActivity;->setGrandeDisplayView(Z)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "isFromAdvnaced"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiDummyPickerActivity;->mIsFromAdvanced:Z

    const-string v1, "isFromWifiTimer"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiDummyPickerActivity;->mIsFromWifiTimer:Z

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiDummyPickerActivity;->mIsFromAdvanced:Z

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiDummyPickerActivity;->initializeToAdvnaced()V

    :goto_1
    const-string v1, "extra_samsungaccount_for_wifisetupwizard"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiDummyPickerActivity;->FLAG_SAMSUNGACCOUNT_FOR_WIFISETUPWIZARD:Z

    :cond_1
    const v1, 0x7f0b0683

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiDummyPickerActivity;->bottomLinearLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0b06ce

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiDummyPickerActivity;->previousButton:Landroid/widget/Button;

    const v1, 0x7f0b00b1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiDummyPickerActivity;->nextButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiDummyPickerActivity;->previousButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiDummyPickerActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiDummyPickerActivity;->FLAG_SAMSUNGACCOUNT_FOR_WIFISETUPWIZARD:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiDummyPickerActivity;->mIsFromAdvanced:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/wifi/WifiDummyPickerActivity;->bottomLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiDummyPickerActivity;->previousButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiDummyPickerActivity;->previousButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusable(Z)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiDummyPickerActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiDummyPickerActivity;->nextButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/view/View;->setFocusable(Z)V

    :goto_2
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiDummyPickerActivity;->mFilter:Landroid/content/IntentFilter;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiDummyPickerActivity;->mFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/android/settings/wifi/WifiDummyPickerActivity$1;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiDummyPickerActivity$1;-><init>(Lcom/android/settings/wifi/WifiDummyPickerActivity;)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiDummyPickerActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void

    :cond_2
    move v1, v3

    goto/16 :goto_0

    :cond_3
    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiDummyPickerActivity;->mIsFromWifiTimer:Z

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiDummyPickerActivity;->initializeToWifiTimer()V

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiDummyPickerActivity;->initializeToWifi()V

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDummyPickerActivity;->bottomLinearLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiDummyPickerActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiDummyPickerActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiDummyPickerActivity;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method
