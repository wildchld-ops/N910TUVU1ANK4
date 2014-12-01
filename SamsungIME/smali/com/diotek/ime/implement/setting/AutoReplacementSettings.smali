.class public Lcom/diotek/ime/implement/setting/AutoReplacementSettings;
.super Landroid/app/Activity;
.source "AutoReplacementSettings.java"


# instance fields
.field private fragment:Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;

.field private isDialogShownState:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/diotek/ime/implement/setting/AutoReplacementSettings;->isDialogShownState:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/AutoReplacementSettings;->fragment:Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;

    return-void
.end method

.method private exitAutoReplacementSettings(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/AutoReplacementSettings;->fragment:Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;

    invoke-virtual {v0}, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->exitAutoRelacementSettings()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;

    invoke-direct {v0}, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/AutoReplacementSettings;->fragment:Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x1020002

    iget-object v2, p0, Lcom/diotek/ime/implement/setting/AutoReplacementSettings;->fragment:Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    iget-boolean v1, p0, Lcom/diotek/ime/implement/setting/AutoReplacementSettings;->isDialogShownState:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/AutoReplacementSettings;->fragment:Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;

    invoke-virtual {v1}, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->isShowDialogByHomeKey()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/diotek/ime/implement/setting/AutoReplacementSettings$1;

    invoke-direct {v1, p0}, Lcom/diotek/ime/implement/setting/AutoReplacementSettings$1;-><init>(Lcom/diotek/ime/implement/setting/AutoReplacementSettings;)V

    invoke-direct {p0, v1}, Lcom/diotek/ime/implement/setting/AutoReplacementSettings;->exitAutoReplacementSettings(Ljava/lang/Runnable;)V

    iput-boolean v0, p0, Lcom/diotek/ime/implement/setting/AutoReplacementSettings;->isDialogShownState:Z

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/AutoReplacementSettings;->fragment:Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;

    invoke-virtual {v0, v2}, Lcom/diotek/ime/implement/setting/AutoReplacementSettingsFragment;->setShowDialogByHomeKey(Z)Z

    iput-boolean v2, p0, Lcom/diotek/ime/implement/setting/AutoReplacementSettings;->isDialogShownState:Z

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
