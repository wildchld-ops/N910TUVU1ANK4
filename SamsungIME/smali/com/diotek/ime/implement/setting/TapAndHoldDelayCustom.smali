.class public Lcom/diotek/ime/implement/setting/TapAndHoldDelayCustom;
.super Landroid/app/Activity;
.source "TapAndHoldDelayCustom.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static isInFront:Ljava/lang/Boolean;


# instance fields
.field private actionbar:Landroid/app/ActionBar;

.field private mHandler:Landroid/os/Handler;

.field private mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field private mRunnable:Ljava/lang/Runnable;

.field private mSaveBtn:Landroid/widget/Button;

.field private mTabAndHoldView:Lcom/diotek/ime/implement/setting/TapAndHoldView;

.field private mcancelBtn:Landroid/widget/Button;

.field private sp:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/diotek/ime/implement/setting/TapAndHoldDelayCustom;->isInFront:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/TapAndHoldDelayCustom;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/TapAndHoldDelayCustom;->sp:Landroid/content/SharedPreferences;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/TapAndHoldDelayCustom;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/diotek/ime/implement/setting/TapAndHoldDelayCustom$1;

    invoke-direct {v0, p0}, Lcom/diotek/ime/implement/setting/TapAndHoldDelayCustom$1;-><init>(Lcom/diotek/ime/implement/setting/TapAndHoldDelayCustom;)V

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/TapAndHoldDelayCustom;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/diotek/ime/implement/setting/TapAndHoldDelayCustom;)Lcom/diotek/ime/implement/setting/TapAndHoldView;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/TapAndHoldDelayCustom;->mTabAndHoldView:Lcom/diotek/ime/implement/setting/TapAndHoldView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/diotek/ime/implement/setting/TapAndHoldDelayCustom;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/TapAndHoldDelayCustom;->mSaveBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Lcom/diotek/ime/implement/setting/TapAndHoldDelayCustom;->isInFront:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$300(Lcom/diotek/ime/implement/setting/TapAndHoldDelayCustom;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/TapAndHoldDelayCustom;->mRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/diotek/ime/implement/setting/TapAndHoldDelayCustom;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/TapAndHoldDelayCustom;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private updateLongPressTimeOut(I)V
    .locals 3

    invoke-static {p1}, Lcom/diotek/ime/framework/repository/KeyboardStatus;->setHoldDelay(I)V

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/TapAndHoldDelayCustom;->sp:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/TapAndHoldDelayCustom;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "settings_hold_delay_custom"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "SETTINGS_DEFAULT_HOLD_DELAY"

    const-string v2, "settings_hold_delay_custom"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/TapAndHoldDelayCustom;->mSaveBtn:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/TapAndHoldDelayCustom;->mTabAndHoldView:Lcom/diotek/ime/implement/setting/TapAndHoldView;

    invoke-virtual {v1}, Lcom/diotek/ime/implement/setting/TapAndHoldView;->getTouchTime()J

    move-result-wide v1

    long-to-int v0, v1

    invoke-direct {p0, v0}, Lcom/diotek/ime/implement/setting/TapAndHoldDelayCustom;->updateLongPressTimeOut(I)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 9

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v5, p0, Lcom/diotek/ime/implement/setting/TapAndHoldDelayCustom;->mTabAndHoldView:Lcom/diotek/ime/implement/setting/TapAndHoldView;

    invoke-virtual {v5}, Lcom/diotek/ime/implement/setting/TapAndHoldView;->refresh()V

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b001d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b001e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    const v5, 0x7f0800e1

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v5, 0x7f0800c0

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v5, 0x7f0800c1

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    :try_start_0
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, 0x0

    const/4 v7, -0x1

    int-to-float v8, v3

    invoke-direct {v5, v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/diotek/ime/implement/setting/TapAndHoldDelayCustom;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020b24

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, 0x0

    const/4 v7, -0x1

    int-to-float v8, v4

    invoke-direct {v5, v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, 0x0

    const/4 v7, -0x1

    int-to-float v8, v4

    invoke-direct {v5, v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/16 v4, 0x400

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v2, 0x7f0300b1

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iput-object v2, p0, Lcom/diotek/ime/implement/setting/TapAndHoldDelayCustom;->actionbar:Landroid/app/ActionBar;

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/TapAndHoldDelayCustom;->actionbar:Landroid/app/ActionBar;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/TapAndHoldDelayCustom;->actionbar:Landroid/app/ActionBar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/TapAndHoldDelayCustom;->actionbar:Landroid/app/ActionBar;

    const v3, 0x7f0e02f3

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setTitle(I)V

    :cond_0
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v2

    iput-object v2, p0, Lcom/diotek/ime/implement/setting/TapAndHoldDelayCustom;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/TapAndHoldDelayCustom;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/TapAndHoldDelayCustom;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/diotek/ime/implement/setting/TapAndHoldDelayCustom;->sp:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/TapAndHoldDelayCustom;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getRepository()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, "TABLET_MODE"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v4, v4}, Landroid/view/Window;->setFlags(II)V

    :cond_1
    const v2, 0x7f0800e3

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/diotek/ime/implement/setting/TapAndHoldView;

    iput-object v2, p0, Lcom/diotek/ime/implement/setting/TapAndHoldDelayCustom;->mTabAndHoldView:Lcom/diotek/ime/implement/setting/TapAndHoldView;

    const v2, 0x7f0800e5

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/diotek/ime/implement/setting/TapAndHoldDelayCustom;->mcancelBtn:Landroid/widget/Button;

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/TapAndHoldDelayCustom;->mcancelBtn:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0800e6

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/diotek/ime/implement/setting/TapAndHoldDelayCustom;->mSaveBtn:Landroid/widget/Button;

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/TapAndHoldDelayCustom;->mSaveBtn:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/TapAndHoldDelayCustom;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/diotek/ime/implement/setting/TapAndHoldDelayCustom;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/diotek/ime/implement/setting/TapAndHoldDelayCustom;->isInFront:Ljava/lang/Boolean;

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/diotek/ime/implement/setting/TapAndHoldDelayCustom;->isInFront:Ljava/lang/Boolean;

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method
