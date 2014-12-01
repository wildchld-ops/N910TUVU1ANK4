.class public Lcom/android/launcher2/guide/CreateFolderGuider;
.super Lcom/android/launcher2/guide/GuiderBase;
.source "CreateFolderGuider.java"

# interfaces
.implements Lcom/android/launcher2/guide/GuiderLifecycleListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ViewAppsGuider"

.field static isStep3DialogVisible:Z

.field public static isViewApps:Z

.field static layout:Landroid/view/ViewGroup;

.field private static mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

.field static menuLayout:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher2/guide/CreateFolderGuider;->isViewApps:Z

    sput-boolean v0, Lcom/android/launcher2/guide/CreateFolderGuider;->isStep3DialogVisible:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/launcher2/guide/GuiderBase;-><init>(Landroid/app/Activity;)V

    const-string v0, "ViewAppsGuider"

    const-string v1, "createfolderguider"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private showHelpDialog_step1()V
    .locals 2

    const/4 v0, 0x1

    sput v0, Lcom/android/launcher2/guide/GuideFragment;->sHelpHubStepNumber:I

    new-instance v0, Lcom/android/launcher2/guide/AddAppsGuider;

    invoke-virtual {p0}, Lcom/android/launcher2/guide/GuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher2/guide/AddAppsGuider;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/android/launcher2/guide/CreateFolderGuider;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    sget-object v0, Lcom/android/launcher2/guide/CreateFolderGuider;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    invoke-interface {v0}, Lcom/android/launcher2/guide/GuiderLifecycleListener;->showHelpDialog()V

    return-void
.end method

.method private showHelpDialog_step2()V
    .locals 2

    const/4 v0, 0x2

    sput v0, Lcom/android/launcher2/guide/GuideFragment;->sHelpHubStepNumber:I

    new-instance v0, Lcom/android/launcher2/guide/AddAppsGuider;

    invoke-virtual {p0}, Lcom/android/launcher2/guide/GuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher2/guide/AddAppsGuider;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/android/launcher2/guide/CreateFolderGuider;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    sget-object v0, Lcom/android/launcher2/guide/CreateFolderGuider;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    check-cast v0, Lcom/android/launcher2/guide/AddAppsGuider;

    invoke-virtual {v0}, Lcom/android/launcher2/guide/AddAppsGuider;->showHelpDialog_step2()V

    return-void
.end method


# virtual methods
.method public dismissHelpDialog()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher2/guide/CreateFolderGuider;->dismissHelpDialog_step3()V

    new-instance v0, Lcom/android/launcher2/guide/AddAppsGuider;

    invoke-virtual {p0}, Lcom/android/launcher2/guide/GuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher2/guide/AddAppsGuider;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/android/launcher2/guide/CreateFolderGuider;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    sget-object v0, Lcom/android/launcher2/guide/CreateFolderGuider;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    invoke-interface {v0}, Lcom/android/launcher2/guide/GuiderLifecycleListener;->dismissHelpDialog()V

    return-void
.end method

.method public dismissHelpDialog_step3()V
    .locals 3

    sget-boolean v1, Lcom/android/launcher2/guide/CreateFolderGuider;->isStep3DialogVisible:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/launcher2/guide/CreateFolderGuider;->isStep3DialogVisible:Z

    invoke-virtual {p0}, Lcom/android/launcher2/guide/GuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v1

    sput-object v1, Lcom/android/launcher2/guide/CreateFolderGuider;->layout:Landroid/view/ViewGroup;

    sget-object v1, Lcom/android/launcher2/guide/CreateFolderGuider;->layout:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/launcher2/guide/CreateFolderGuider;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/launcher2/guide/CreateFolderGuider;->layout:Landroid/view/ViewGroup;

    sget-object v2, Lcom/android/launcher2/guide/CreateFolderGuider;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic finish()V
    .locals 0

    invoke-super {p0}, Lcom/android/launcher2/guide/GuiderBase;->finish()V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher2/guide/CreateFolderGuider;->dismissHelpDialog()V

    sget v0, Lcom/android/launcher2/guide/GuideFragment;->sHelpHubStepNumber:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/android/launcher2/guide/CreateFolderGuider;->showHelpDialog_step1()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/launcher2/guide/CreateFolderGuider;->showHelpDialog_step2()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/launcher2/guide/CreateFolderGuider;->showHelpDialog_step3()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public bridge synthetic onSwitcherChanged(Landroid/widget/CompoundButton;Z)Z
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/launcher2/guide/GuiderBase;->onSwitcherChanged(Landroid/widget/CompoundButton;Z)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic showCompleteDialog()V
    .locals 0

    invoke-super {p0}, Lcom/android/launcher2/guide/GuiderBase;->showCompleteDialog()V

    return-void
.end method

.method public showHelpDialog()V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher2/guide/CreateFolderGuider;->showHelpDialog_step1()V

    return-void
.end method

.method public showHelpDialog_step3()V
    .locals 11

    const/4 v10, 0x1

    sget-boolean v8, Lcom/android/launcher2/guide/CreateFolderGuider;->isStep3DialogVisible:Z

    if-nez v8, :cond_0

    sget-boolean v8, Lcom/android/launcher2/HomeEditBar;->isfolderCreated:Z

    if-eqz v8, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v8, 0x3

    sput v8, Lcom/android/launcher2/guide/GuideFragment;->sHelpHubStepNumber:I

    sput-boolean v10, Lcom/android/launcher2/guide/CreateFolderGuider;->isStep3DialogVisible:Z

    invoke-virtual {p0}, Lcom/android/launcher2/guide/GuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v8

    sput-object v8, Lcom/android/launcher2/guide/CreateFolderGuider;->layout:Landroid/view/ViewGroup;

    sget-object v8, Lcom/android/launcher2/guide/CreateFolderGuider;->layout:Landroid/view/ViewGroup;

    if-eqz v8, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/guide/GuiderBase;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string v9, "layout_inflater"

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    const v8, 0x7f030010

    sget-object v9, Lcom/android/launcher2/guide/CreateFolderGuider;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v4, v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    sput-object v8, Lcom/android/launcher2/guide/CreateFolderGuider;->menuLayout:Landroid/view/View;

    sget-object v8, Lcom/android/launcher2/guide/CreateFolderGuider;->menuLayout:Landroid/view/View;

    const v9, 0x7f09001e

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/view/View;->bringToFront()V

    sget-object v8, Lcom/android/launcher2/guide/CreateFolderGuider;->menuLayout:Landroid/view/View;

    const v9, 0x7f09001f

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sget-object v8, Lcom/android/launcher2/guide/CreateFolderGuider;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f0f006e

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v8, 0x7f0f0087

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v8, v10, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    invoke-static {v1, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
