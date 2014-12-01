.class Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;
.super Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;
.source "MenuAppsGrid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/MenuAppsGrid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateMoveToSecretBox"
.end annotation


# static fields
.field private static final CANCEL:I = 0x2

.field private static final FINISH:I = 0x1

.field static final MOVE_TO_SECRET:Ljava/lang/String; = "com.sec.android.app.launcher.MOVE_TO_PRIVATE"


# instance fields
.field private mBinder:Landroid/os/IBinder;

.field private final mMainHandler:Landroid/os/Handler;

.field mPMClient:Lcom/samsung/android/privatemode/IPrivateModeClient;

.field private mPMManager:Lcom/samsung/android/privatemode/PrivateModeManager;

.field final synthetic this$0:Lcom/android/launcher2/MenuAppsGrid;


# direct methods
.method private constructor <init>(Lcom/android/launcher2/MenuAppsGrid;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;-><init>(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/MenuAppsGrid$1;)V

    iput-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;->mPMManager:Lcom/samsung/android/privatemode/PrivateModeManager;

    iput-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;->mBinder:Landroid/os/IBinder;

    new-instance v0, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox$1;

    invoke-direct {v0, p0}, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox$1;-><init>(Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;)V

    iput-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;->mPMClient:Lcom/samsung/android/privatemode/IPrivateModeClient;

    new-instance v0, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox$2;

    invoke-direct {v0, p0}, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox$2;-><init>(Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;)V

    iput-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;->mMainHandler:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/MenuAppsGrid;Lcom/android/launcher2/MenuAppsGrid$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;-><init>(Lcom/android/launcher2/MenuAppsGrid;)V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;)Lcom/samsung/android/privatemode/PrivateModeManager;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;->mPMManager:Lcom/samsung/android/privatemode/PrivateModeManager;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$4802(Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;->mBinder:Landroid/os/IBinder;

    return-object p1
.end method

.method static synthetic access$4900(Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private isNeedRegister()Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/privatemode/PrivateModeManager;->isPrivateMode()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/privatemode/PrivateModeManager;->isReady(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/samsung/android/privatemode/PrivateModeManager;->isM2PActivating()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected complete()V
    .locals 2

    invoke-direct {p0}, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;->isNeedRegister()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;->mPMClient:Lcom/samsung/android/privatemode/IPrivateModeClient;

    invoke-static {v0, v1}, Lcom/samsung/android/privatemode/PrivateModeManager;->getInstance(Landroid/content/Context;Lcom/samsung/android/privatemode/IPrivateModeClient;)Lcom/samsung/android/privatemode/PrivateModeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;->mPMManager:Lcom/samsung/android/privatemode/PrivateModeManager;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;->moveToSecretBox()V

    goto :goto_0
.end method

.method public enterItemViews(Ljava/lang/Iterable;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/android/launcher2/AppIconView;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x0

    invoke-super {p0, p1}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->enterItemViews(Ljava/lang/Iterable;)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AppIconView;

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    const/4 v4, 0x1

    # invokes: Lcom/android/launcher2/MenuAppsGrid;->setIconTextAndShadowVisibilityOnItem(ZLcom/android/launcher2/AppIconView;)V
    invoke-static {v3, v4, v2}, Lcom/android/launcher2/MenuAppsGrid;->access$3600(Lcom/android/launcher2/MenuAppsGrid;ZLcom/android/launcher2/AppIconView;)V

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppItem;

    sget-object v3, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v3, v1}, Lcom/android/launcher2/MenuAppModel;->canMoveToPrivate(Lcom/android/launcher2/AppItem;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2, v5}, Lcom/android/launcher2/AppIconView;->setCheckingEnabled(Z)V

    instance-of v3, v1, Lcom/android/launcher2/FolderItem;

    if-nez v3, :cond_0

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public exit(Ljava/util/List;Lcom/android/launcher2/MenuAppsGrid$State;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Lcom/android/launcher2/MenuAppsGrid$State;",
            ")V"
        }
    .end annotation

    sget-object v0, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuAppModel;->normalizeModel(Z)V

    invoke-super {p0, p1, p2}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->exit(Ljava/util/List;Lcom/android/launcher2/MenuAppsGrid$State;)V

    return-void
.end method

.method public getAppsList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation

    sget-boolean v2, Lcom/android/launcher2/Launcher;->sIsSecretModeOn:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/launcher2/MenuAppModel;->getNormalItems(Z)Ljava/util/List;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    sget-object v2, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppModel;->getTopLevelItems()Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    goto :goto_0
.end method

.method public moveToSecretBox()V
    .locals 15

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->hasCheckedItems()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;
    invoke-static {v0}, Lcom/android/launcher2/MenuAppsGrid;->access$3300(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGridFragment;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    :goto_0
    return-void

    :cond_0
    const/4 v9, 0x0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/Launcher;

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v6}, Lcom/android/launcher2/Launcher;->getSecretPageManager()Lcom/android/launcher2/SecretPageManager;

    move-result-object v4

    const/4 v8, 0x0

    const/4 v12, 0x0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGrid$SelectableItemStateObj;->getCheckedItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/AppItem;

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v11}, Lcom/android/launcher2/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v11}, Lcom/android/launcher2/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # invokes: Lcom/android/launcher2/MenuAppsGrid;->getRealatedApps(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0, v8}, Lcom/android/launcher2/MenuAppsGrid;->access$5000(Lcom/android/launcher2/MenuAppsGrid;Ljava/util/List;)Ljava/util/List;

    move-result-object v12

    sget-object v0, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppModel;->editBegin()V

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/AppItem;

    invoke-virtual {v11}, Lcom/android/launcher2/AppItem;->moveSecretBox()V

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppModel;->editCommit()V

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;
    invoke-static {v0}, Lcom/android/launcher2/MenuAppsGrid;->access$3300(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGridFragment;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    sget-boolean v0, Lcom/android/launcher2/Launcher;->sIsSecretModeOn:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    if-ne v9, v0, :cond_4

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f00f7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v6, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_3
    iget-object v0, v6, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v7

    new-instance v0, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox$3;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox$3;-><init>(Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;Ljava/util/List;Landroid/content/pm/PackageManager;Lcom/android/launcher2/SecretPageManager;Ljava/util/List;Lcom/android/launcher2/Launcher;Lcom/android/launcher2/Workspace;)V

    invoke-virtual {v7, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mTabHost:Lcom/android/launcher2/MenuView;
    invoke-static {v0}, Lcom/android/launcher2/MenuAppsGrid;->access$100(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuView;

    move-result-object v0

    new-instance v1, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox$4;

    invoke-direct {v1, p0, v2}, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox$4;-><init>(Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f00f4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v1, v13

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v6, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_3

    :cond_5
    const/4 v0, 0x1

    if-ne v9, v0, :cond_6

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f00f6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v6, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f00f5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v1, v13

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v6, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_3
.end method
