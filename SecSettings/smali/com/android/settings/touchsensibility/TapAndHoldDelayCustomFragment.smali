.class public Lcom/android/settings/touchsensibility/TapAndHoldDelayCustomFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "TapAndHoldDelayCustomFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static isInFront:Ljava/lang/Boolean;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mRunnable:Ljava/lang/Runnable;

.field private mSaveBttn:Landroid/widget/Button;

.field private mTabAndHoldView:Lcom/android/settings/touchsensibility/TapAndHoldView;

.field private mcancelBttn:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/settings/touchsensibility/TapAndHoldDelayCustomFragment;->isInFront:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/touchsensibility/TapAndHoldDelayCustomFragment;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/touchsensibility/TapAndHoldDelayCustomFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/touchsensibility/TapAndHoldDelayCustomFragment$1;-><init>(Lcom/android/settings/touchsensibility/TapAndHoldDelayCustomFragment;)V

    iput-object v0, p0, Lcom/android/settings/touchsensibility/TapAndHoldDelayCustomFragment;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/touchsensibility/TapAndHoldDelayCustomFragment;)Lcom/android/settings/touchsensibility/TapAndHoldView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/touchsensibility/TapAndHoldDelayCustomFragment;->mTabAndHoldView:Lcom/android/settings/touchsensibility/TapAndHoldView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/touchsensibility/TapAndHoldDelayCustomFragment;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/touchsensibility/TapAndHoldDelayCustomFragment;->mSaveBttn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Lcom/android/settings/touchsensibility/TapAndHoldDelayCustomFragment;->isInFront:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/touchsensibility/TapAndHoldDelayCustomFragment;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/touchsensibility/TapAndHoldDelayCustomFragment;->mRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/touchsensibility/TapAndHoldDelayCustomFragment;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/touchsensibility/TapAndHoldDelayCustomFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private updateLongPressTimeOut(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "long_press_timeout"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v1, p0, Lcom/android/settings/touchsensibility/TapAndHoldDelayCustomFragment;->mSaveBttn:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/touchsensibility/TapAndHoldDelayCustomFragment;->mTabAndHoldView:Lcom/android/settings/touchsensibility/TapAndHoldView;

    invoke-virtual {v1}, Lcom/android/settings/touchsensibility/TapAndHoldView;->getTouchTime()J

    move-result-wide v1

    long-to-int v0, v1

    invoke-direct {p0, v0}, Lcom/android/settings/touchsensibility/TapAndHoldDelayCustomFragment;->updateLongPressTimeOut(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/touchsensibility/TapAndHoldDelayCustomFragment;->mTabAndHoldView:Lcom/android/settings/touchsensibility/TapAndHoldView;

    invoke-virtual {v0}, Lcom/android/settings/touchsensibility/TapAndHoldView;->refresh()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const v1, 0x7f040248

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b0593

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/touchsensibility/TapAndHoldView;

    iput-object v1, p0, Lcom/android/settings/touchsensibility/TapAndHoldDelayCustomFragment;->mTabAndHoldView:Lcom/android/settings/touchsensibility/TapAndHoldView;

    const v1, 0x7f0b0595

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/touchsensibility/TapAndHoldDelayCustomFragment;->mcancelBttn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/touchsensibility/TapAndHoldDelayCustomFragment;->mcancelBttn:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0b0596

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/touchsensibility/TapAndHoldDelayCustomFragment;->mSaveBttn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/touchsensibility/TapAndHoldDelayCustomFragment;->mSaveBttn:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/settings/touchsensibility/TapAndHoldDelayCustomFragment;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/touchsensibility/TapAndHoldDelayCustomFragment;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/settings/touchsensibility/TapAndHoldDelayCustomFragment;->isInFront:Ljava/lang/Boolean;

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0919a9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/settings/touchsensibility/TapAndHoldDelayCustomFragment;->isInFront:Ljava/lang/Boolean;

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    return-void
.end method
