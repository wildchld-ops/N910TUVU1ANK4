.class Lcom/android/launcher2/LauncherExModel$LoaderTask;
.super Ljava/lang/Object;
.source "LauncherExModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/LauncherExModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoaderTask"
.end annotation


# instance fields
.field private final PAGEINDEX_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mIsFestival:Z

.field private volatile mIsFestivalLoader:Z

.field private volatile mIsFestivalModeChanged:Z

.field private mIsLaunching:Z

.field private volatile mIsModeChanged:Z

.field private volatile mIsSecret:Z

.field private mStep1Finished:Z

.field private volatile mStopped:Z

.field final synthetic this$0:Lcom/android/launcher2/LauncherExModel;


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherExModel;ZZZZ)V
    .locals 3

    iput-object p1, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/launcher2/LauncherExModel$LoaderTask$31;

    invoke-direct {v0, p0}, Lcom/android/launcher2/LauncherExModel$LoaderTask$31;-><init>(Lcom/android/launcher2/LauncherExModel$LoaderTask;)V

    iput-object v0, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->PAGEINDEX_COMPARATOR:Ljava/util/Comparator;

    iput-boolean p2, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mIsLaunching:Z

    const-string v0, "LauncherExModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LoaderTask isFestivalLoader: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p5, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mIsFestivalLoader:Z

    if-eqz p5, :cond_0

    iput-boolean p3, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mIsFestival:Z

    iput-boolean p4, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mIsFestivalModeChanged:Z

    :goto_0
    return-void

    :cond_0
    iput-boolean p3, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mIsSecret:Z

    iput-boolean p4, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mIsModeChanged:Z

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/android/launcher2/LauncherExModel$LoaderTask;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->runBindFestivalPage()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/launcher2/LauncherExModel$LoaderTask;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mIsFestival:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/LauncherExModel$LoaderTask;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->runBindSecretPage()V

    return-void
.end method

.method static synthetic access$302(Lcom/android/launcher2/LauncherExModel$LoaderTask;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mStep1Finished:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/launcher2/LauncherExModel$LoaderTask;)Lcom/android/launcher2/LauncherModel$Callbacks;
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->getLoaderTaskCallbacks()Lcom/android/launcher2/LauncherModel$Callbacks;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/launcher2/LauncherExModel$LoaderTask;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mStopped:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/launcher2/LauncherExModel$LoaderTask;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mIsSecret:Z

    return v0
.end method

.method private bindFestivalPageModeChange()V
    .locals 2

    new-instance v0, Lcom/android/launcher2/LauncherExModel$LoaderTask$26;

    invoke-direct {v0, p0}, Lcom/android/launcher2/LauncherExModel$LoaderTask$26;-><init>(Lcom/android/launcher2/LauncherExModel$LoaderTask;)V

    iget-object v1, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    # invokes: Lcom/android/launcher2/LauncherExModel;->runOnMainThread(Ljava/lang/Runnable;)V
    invoke-static {v1, v0}, Lcom/android/launcher2/LauncherExModel;->access$700(Lcom/android/launcher2/LauncherExModel;Ljava/lang/Runnable;)V

    return-void
.end method

.method private bindFestivalWorkspace()V
    .locals 2

    iget-boolean v1, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mIsFestival:Z

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->getLoaderTaskCallbacks()Lcom/android/launcher2/LauncherModel$Callbacks;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/android/launcher2/LauncherExModel$LoaderTask$27;

    invoke-direct {v0, p0}, Lcom/android/launcher2/LauncherExModel$LoaderTask$27;-><init>(Lcom/android/launcher2/LauncherExModel$LoaderTask;)V

    iget-object v1, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    # invokes: Lcom/android/launcher2/LauncherExModel;->runOnMainThread(Ljava/lang/Runnable;)V
    invoke-static {v1, v0}, Lcom/android/launcher2/LauncherExModel;->access$700(Lcom/android/launcher2/LauncherExModel;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/launcher2/LauncherExModel$LoaderTask$28;

    invoke-direct {v0, p0}, Lcom/android/launcher2/LauncherExModel$LoaderTask$28;-><init>(Lcom/android/launcher2/LauncherExModel$LoaderTask;)V

    iget-object v1, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    # invokes: Lcom/android/launcher2/LauncherExModel;->runOnMainThread(Ljava/lang/Runnable;)V
    invoke-static {v1, v0}, Lcom/android/launcher2/LauncherExModel;->access$700(Lcom/android/launcher2/LauncherExModel;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private bindSecretAllApps()V
    .locals 3

    invoke-direct {p0}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->getLoaderTaskCallbacks()Lcom/android/launcher2/LauncherModel$Callbacks;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "LauncherExModel"

    const-string v2, "LoaderTask running with no launcher"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/android/launcher2/LauncherExModel$LoaderTask$25;

    invoke-direct {v0, p0}, Lcom/android/launcher2/LauncherExModel$LoaderTask$25;-><init>(Lcom/android/launcher2/LauncherExModel$LoaderTask;)V

    iget-object v1, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    # invokes: Lcom/android/launcher2/LauncherExModel;->runOnMainThread(Ljava/lang/Runnable;)V
    invoke-static {v1, v0}, Lcom/android/launcher2/LauncherExModel;->access$700(Lcom/android/launcher2/LauncherExModel;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private bindSecretPageModeChange()V
    .locals 2

    new-instance v0, Lcom/android/launcher2/LauncherExModel$LoaderTask$17;

    invoke-direct {v0, p0}, Lcom/android/launcher2/LauncherExModel$LoaderTask$17;-><init>(Lcom/android/launcher2/LauncherExModel$LoaderTask;)V

    iget-object v1, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    # invokes: Lcom/android/launcher2/LauncherExModel;->runOnMainThread(Ljava/lang/Runnable;)V
    invoke-static {v1, v0}, Lcom/android/launcher2/LauncherExModel;->access$700(Lcom/android/launcher2/LauncherExModel;Ljava/lang/Runnable;)V

    return-void
.end method

.method private bindSecretWorkspace()V
    .locals 18

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mIsSecret:Z

    if-nez v1, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->getLoaderTaskCallbacks()Lcom/android/launcher2/LauncherModel$Callbacks;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v12, Lcom/android/launcher2/LauncherExModel$LoaderTask$23;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/launcher2/LauncherExModel$LoaderTask$23;-><init>(Lcom/android/launcher2/LauncherExModel$LoaderTask;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    # invokes: Lcom/android/launcher2/LauncherExModel;->runOnMainThread(Ljava/lang/Runnable;)V
    invoke-static {v1, v12}, Lcom/android/launcher2/LauncherExModel;->access$700(Lcom/android/launcher2/LauncherExModel;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    new-instance v12, Lcom/android/launcher2/LauncherExModel$LoaderTask$24;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/launcher2/LauncherExModel$LoaderTask$24;-><init>(Lcom/android/launcher2/LauncherExModel$LoaderTask;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    # invokes: Lcom/android/launcher2/LauncherExModel;->runOnMainThread(Ljava/lang/Runnable;)V
    invoke-static {v1, v12}, Lcom/android/launcher2/LauncherExModel;->access$700(Lcom/android/launcher2/LauncherExModel;Ljava/lang/Runnable;)V

    new-instance v2, Ljava/util/ArrayList;

    sget-object v1, Lcom/android/launcher2/LauncherModel;->sHomeItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    sget-object v1, Lcom/android/launcher2/LauncherModel;->sHomeItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/HomeItem;

    iget-wide v14, v11, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v16, -0x64

    cmp-long v1, v14, v16

    if-nez v1, :cond_2

    iget-boolean v1, v11, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    if-eqz v1, :cond_2

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/android/launcher2/LauncherModel;->sHomeFolders:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    sget-object v1, Lcom/android/launcher2/LauncherModel;->sHomeFolders:Ljava/util/HashMap;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/HomeFolderItem;

    iget-boolean v1, v7, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    if-eqz v1, :cond_4

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/android/launcher2/LauncherModel;->sAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_6
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/launcher2/HomeWidgetItem;

    iget-boolean v1, v13, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    if-eqz v1, :cond_6

    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/android/launcher2/LauncherModel;->sSamsungWidgets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_8
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/launcher2/SamsungWidgetItem;

    iget-boolean v1, v13, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    if-eqz v1, :cond_8

    invoke-interface {v5, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_9
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/android/launcher2/LauncherModel;->sSurfaceWidgets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_a
    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/launcher2/SurfaceWidgetItem;

    iget-boolean v1, v13, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    if-eqz v1, :cond_a

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_b
    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->bindSecretWorkspace(Ljava/util/List;Ljava/util/HashMap;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    goto/16 :goto_0
.end method

.method private bindSecretWorkspace(Ljava/util/List;Ljava/util/HashMap;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/HomeFolderItem;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeWidgetItem;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/SamsungWidgetItem;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/SurfaceWidgetItem;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->getLoaderTaskCallbacks()Lcom/android/launcher2/LauncherModel$Callbacks;

    move-result-object v7

    if-nez v7, :cond_1

    const-string v7, "LauncherExModel"

    const-string v8, "bindSecretWorkspace running with no launcher"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    move v6, v2

    add-int/lit8 v7, v2, 0x6

    if-gt v7, v0, :cond_2

    const/4 v1, 0x6

    :goto_1
    new-instance v4, Lcom/android/launcher2/LauncherExModel$LoaderTask$18;

    invoke-direct {v4, p0, p1, v6, v1}, Lcom/android/launcher2/LauncherExModel$LoaderTask$18;-><init>(Lcom/android/launcher2/LauncherExModel$LoaderTask;Ljava/util/List;II)V

    iget-object v7, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    # invokes: Lcom/android/launcher2/LauncherExModel;->runOnMainThread(Ljava/lang/Runnable;)V
    invoke-static {v7, v4}, Lcom/android/launcher2/LauncherExModel;->access$700(Lcom/android/launcher2/LauncherExModel;Ljava/lang/Runnable;)V

    add-int/lit8 v2, v2, 0x6

    goto :goto_0

    :cond_2
    sub-int v1, v0, v2

    goto :goto_1

    :cond_3
    new-instance v4, Lcom/android/launcher2/LauncherExModel$LoaderTask$19;

    invoke-direct {v4, p0, p2}, Lcom/android/launcher2/LauncherExModel$LoaderTask$19;-><init>(Lcom/android/launcher2/LauncherExModel$LoaderTask;Ljava/util/HashMap;)V

    iget-object v7, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    # invokes: Lcom/android/launcher2/LauncherExModel;->runOnMainThread(Ljava/lang/Runnable;)V
    invoke-static {v7, v4}, Lcom/android/launcher2/LauncherExModel;->access$700(Lcom/android/launcher2/LauncherExModel;Ljava/lang/Runnable;)V

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/HomeWidgetItem;

    new-instance v4, Lcom/android/launcher2/LauncherExModel$LoaderTask$20;

    invoke-direct {v4, p0, v5}, Lcom/android/launcher2/LauncherExModel$LoaderTask$20;-><init>(Lcom/android/launcher2/LauncherExModel$LoaderTask;Lcom/android/launcher2/HomeWidgetItem;)V

    iget-object v7, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    # invokes: Lcom/android/launcher2/LauncherExModel;->runOnMainThread(Ljava/lang/Runnable;)V
    invoke-static {v7, v4}, Lcom/android/launcher2/LauncherExModel;->access$700(Lcom/android/launcher2/LauncherExModel;Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_4
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/SamsungWidgetItem;

    new-instance v4, Lcom/android/launcher2/LauncherExModel$LoaderTask$21;

    invoke-direct {v4, p0, v5}, Lcom/android/launcher2/LauncherExModel$LoaderTask$21;-><init>(Lcom/android/launcher2/LauncherExModel$LoaderTask;Lcom/android/launcher2/SamsungWidgetItem;)V

    iget-object v7, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    # invokes: Lcom/android/launcher2/LauncherExModel;->runOnMainThread(Ljava/lang/Runnable;)V
    invoke-static {v7, v4}, Lcom/android/launcher2/LauncherExModel;->access$700(Lcom/android/launcher2/LauncherExModel;Ljava/lang/Runnable;)V

    goto :goto_3

    :cond_5
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/SurfaceWidgetItem;

    new-instance v4, Lcom/android/launcher2/LauncherExModel$LoaderTask$22;

    invoke-direct {v4, p0, v5}, Lcom/android/launcher2/LauncherExModel$LoaderTask$22;-><init>(Lcom/android/launcher2/LauncherExModel$LoaderTask;Lcom/android/launcher2/SurfaceWidgetItem;)V

    iget-object v7, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    # invokes: Lcom/android/launcher2/LauncherExModel;->runOnMainThread(Ljava/lang/Runnable;)V
    invoke-static {v7, v4}, Lcom/android/launcher2/LauncherExModel;->access$700(Lcom/android/launcher2/LauncherExModel;Ljava/lang/Runnable;)V

    goto :goto_4
.end method

.method private bindWorkspace()V
    .locals 34

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v30

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->getLoaderTaskCallbacks()Lcom/android/launcher2/LauncherModel$Callbacks;

    move-result-object v4

    if-nez v4, :cond_0

    const-string v4, "LauncherExModel"

    const-string v5, "LoaderTask running with no launcher"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    new-instance v23, Lcom/android/launcher2/LauncherExModel$LoaderTask$2;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher2/LauncherExModel$LoaderTask$2;-><init>(Lcom/android/launcher2/LauncherExModel$LoaderTask;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    move-object/from16 v0, v23

    # invokes: Lcom/android/launcher2/LauncherExModel;->runOnMainThread(Ljava/lang/Runnable;)V
    invoke-static {v4, v0}, Lcom/android/launcher2/LauncherExModel;->access$700(Lcom/android/launcher2/LauncherExModel;Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mIsSecret:Z

    if-eqz v4, :cond_1

    new-instance v23, Lcom/android/launcher2/LauncherExModel$LoaderTask$3;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher2/LauncherExModel$LoaderTask$3;-><init>(Lcom/android/launcher2/LauncherExModel$LoaderTask;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    move-object/from16 v0, v23

    # invokes: Lcom/android/launcher2/LauncherExModel;->runOnMainThread(Ljava/lang/Runnable;)V
    invoke-static {v4, v0}, Lcom/android/launcher2/LauncherExModel;->access$700(Lcom/android/launcher2/LauncherExModel;Ljava/lang/Runnable;)V

    :cond_1
    new-instance v33, Ljava/util/ArrayList;

    sget-object v4, Lcom/android/launcher2/LauncherModel;->sHomeItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move-object/from16 v0, v33

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    sget-object v4, Lcom/android/launcher2/LauncherModel;->sHomeItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_2
    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/launcher2/HomeItem;

    move-object/from16 v0, v21

    iget-boolean v4, v0, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    if-eqz v4, :cond_3

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move-object/from16 v0, v21

    iget-wide v4, v0, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v6, -0x65

    cmp-long v4, v4, v6

    if-nez v4, :cond_4

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    move-object/from16 v0, v21

    iget-wide v4, v0, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v6, -0x64

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    move-object/from16 v0, v33

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    new-instance v23, Lcom/android/launcher2/LauncherExModel$LoaderTask$4;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherExModel$LoaderTask$4;-><init>(Lcom/android/launcher2/LauncherExModel$LoaderTask;Ljava/util/List;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    move-object/from16 v0, v23

    # invokes: Lcom/android/launcher2/LauncherExModel;->runOnMainThread(Ljava/lang/Runnable;)V
    invoke-static {v4, v0}, Lcom/android/launcher2/LauncherExModel;->access$700(Lcom/android/launcher2/LauncherExModel;Ljava/lang/Runnable;)V

    invoke-interface/range {v33 .. v33}, Ljava/util/List;->size()I

    move-result v10

    const/16 v17, 0x0

    :goto_2
    move/from16 v0, v17

    if-ge v0, v10, :cond_7

    move/from16 v29, v17

    add-int/lit8 v4, v17, 0x6

    if-gt v4, v10, :cond_6

    const/4 v11, 0x6

    :goto_3
    new-instance v23, Lcom/android/launcher2/LauncherExModel$LoaderTask$5;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v33

    move/from16 v3, v29

    invoke-direct {v0, v1, v2, v3, v11}, Lcom/android/launcher2/LauncherExModel$LoaderTask$5;-><init>(Lcom/android/launcher2/LauncherExModel$LoaderTask;Ljava/util/List;II)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    move-object/from16 v0, v23

    # invokes: Lcom/android/launcher2/LauncherExModel;->runOnMainThread(Ljava/lang/Runnable;)V
    invoke-static {v4, v0}, Lcom/android/launcher2/LauncherExModel;->access$700(Lcom/android/launcher2/LauncherExModel;Ljava/lang/Runnable;)V

    add-int/lit8 v17, v17, 0x6

    goto :goto_2

    :cond_6
    sub-int v11, v10, v17

    goto :goto_3

    :cond_7
    new-instance v22, Ljava/util/HashMap;

    invoke-direct/range {v22 .. v22}, Ljava/util/HashMap;-><init>()V

    new-instance v25, Ljava/util/HashMap;

    invoke-direct/range {v25 .. v25}, Ljava/util/HashMap;-><init>()V

    sget-object v4, Lcom/android/launcher2/LauncherModel;->sHomeFolders:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_4
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    sget-object v4, Lcom/android/launcher2/LauncherModel;->sHomeFolders:Ljava/util/HashMap;

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/launcher2/HomeFolderItem;

    iget-boolean v4, v14, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    if-eqz v4, :cond_8

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_8
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_9
    new-instance v15, Ljava/util/HashMap;

    move-object/from16 v0, v22

    invoke-direct {v15, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    new-instance v23, Lcom/android/launcher2/LauncherExModel$LoaderTask$6;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v15}, Lcom/android/launcher2/LauncherExModel$LoaderTask$6;-><init>(Lcom/android/launcher2/LauncherExModel$LoaderTask;Ljava/util/HashMap;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    move-object/from16 v0, v23

    # invokes: Lcom/android/launcher2/LauncherExModel;->runOnMainThread(Ljava/lang/Runnable;)V
    invoke-static {v4, v0}, Lcom/android/launcher2/LauncherExModel;->access$700(Lcom/android/launcher2/LauncherExModel;Ljava/lang/Runnable;)V

    new-instance v23, Lcom/android/launcher2/LauncherExModel$LoaderTask$7;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher2/LauncherExModel$LoaderTask$7;-><init>(Lcom/android/launcher2/LauncherExModel$LoaderTask;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    move-object/from16 v0, v23

    # invokes: Lcom/android/launcher2/LauncherExModel;->runOnMainThread(Ljava/lang/Runnable;)V
    invoke-static {v4, v0}, Lcom/android/launcher2/LauncherExModel;->access$700(Lcom/android/launcher2/LauncherExModel;Ljava/lang/Runnable;)V

    const/4 v12, 0x0

    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    sget-object v4, Lcom/android/launcher2/LauncherModel;->sAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_a
    :goto_5
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/android/launcher2/HomeWidgetItem;

    move-object/from16 v0, v32

    iget v4, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    if-nez v4, :cond_a

    move-object/from16 v0, v32

    iget-boolean v4, v0, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    if-eqz v4, :cond_b

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_b
    move-object/from16 v0, v32

    iget v4, v0, Lcom/android/launcher2/HomeItem;->mFestivalType:I

    if-lez v4, :cond_c

    move-object/from16 v0, v32

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_c
    new-instance v23, Lcom/android/launcher2/LauncherExModel$LoaderTask$8;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherExModel$LoaderTask$8;-><init>(Lcom/android/launcher2/LauncherExModel$LoaderTask;Lcom/android/launcher2/HomeWidgetItem;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    move-object/from16 v0, v23

    # invokes: Lcom/android/launcher2/LauncherExModel;->runOnMainThread(Ljava/lang/Runnable;)V
    invoke-static {v4, v0}, Lcom/android/launcher2/LauncherExModel;->access$700(Lcom/android/launcher2/LauncherExModel;Ljava/lang/Runnable;)V

    goto :goto_5

    :cond_d
    sget-object v4, Lcom/android/launcher2/LauncherModel;->sAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_e
    :goto_6
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/android/launcher2/HomeWidgetItem;

    move-object/from16 v0, v32

    iget v4, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    if-eqz v4, :cond_e

    move-object/from16 v0, v32

    iget-boolean v4, v0, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    if-eqz v4, :cond_f

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_f
    move-object/from16 v0, v32

    iget v4, v0, Lcom/android/launcher2/HomeItem;->mFestivalType:I

    if-lez v4, :cond_10

    move-object/from16 v0, v32

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_10
    new-instance v23, Lcom/android/launcher2/LauncherExModel$LoaderTask$9;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherExModel$LoaderTask$9;-><init>(Lcom/android/launcher2/LauncherExModel$LoaderTask;Lcom/android/launcher2/HomeWidgetItem;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    move-object/from16 v0, v23

    # invokes: Lcom/android/launcher2/LauncherExModel;->runOnMainThread(Ljava/lang/Runnable;)V
    invoke-static {v4, v0}, Lcom/android/launcher2/LauncherExModel;->access$700(Lcom/android/launcher2/LauncherExModel;Ljava/lang/Runnable;)V

    goto :goto_6

    :cond_11
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    sget-object v4, Lcom/android/launcher2/LauncherModel;->sSamsungWidgets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_7
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/android/launcher2/SamsungWidgetItem;

    move-object/from16 v0, v32

    iget-boolean v4, v0, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    if-eqz v4, :cond_12

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_12
    new-instance v23, Lcom/android/launcher2/LauncherExModel$LoaderTask$10;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherExModel$LoaderTask$10;-><init>(Lcom/android/launcher2/LauncherExModel$LoaderTask;Lcom/android/launcher2/SamsungWidgetItem;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    move-object/from16 v0, v23

    # invokes: Lcom/android/launcher2/LauncherExModel;->runOnMainThread(Ljava/lang/Runnable;)V
    invoke-static {v4, v0}, Lcom/android/launcher2/LauncherExModel;->access$700(Lcom/android/launcher2/LauncherExModel;Ljava/lang/Runnable;)V

    goto :goto_7

    :cond_13
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    sget-object v4, Lcom/android/launcher2/LauncherModel;->sSurfaceWidgets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_8
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/android/launcher2/SurfaceWidgetItem;

    move-object/from16 v0, v32

    iget-boolean v4, v0, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    if-eqz v4, :cond_14

    move-object/from16 v0, v28

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_14
    new-instance v23, Lcom/android/launcher2/LauncherExModel$LoaderTask$11;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherExModel$LoaderTask$11;-><init>(Lcom/android/launcher2/LauncherExModel$LoaderTask;Lcom/android/launcher2/SurfaceWidgetItem;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    move-object/from16 v0, v23

    # invokes: Lcom/android/launcher2/LauncherExModel;->runOnMainThread(Ljava/lang/Runnable;)V
    invoke-static {v4, v0}, Lcom/android/launcher2/LauncherExModel;->access$700(Lcom/android/launcher2/LauncherExModel;Ljava/lang/Runnable;)V

    goto :goto_8

    :cond_15
    sget-boolean v4, Lcom/android/launcher2/LauncherApplication;->sIsTheFisrt:Z

    if-eqz v4, :cond_16

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v4

    const-string v5, "WGCT"

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-object v7, v7, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v7}, Lcom/android/launcher2/LauncherApplication;->getModel()Lcom/android/launcher2/LauncherModel;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher2/LauncherModel;->WidgetCount()I

    move-result v7

    int-to-long v7, v7

    const/4 v9, 0x1

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher2/LauncherApplication;->insertLog(Ljava/lang/String;Ljava/lang/String;JZ)V

    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/launcher2/LauncherApplication;->sIsTheFisrt:Z

    :cond_16
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mIsSecret:Z

    if-eqz v4, :cond_17

    move-object/from16 v4, p0

    move-object/from16 v5, v26

    move-object/from16 v6, v25

    move-object/from16 v7, v24

    move-object/from16 v8, v27

    move-object/from16 v9, v28

    invoke-direct/range {v4 .. v9}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->bindSecretWorkspace(Ljava/util/List;Ljava/util/HashMap;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    :cond_17
    sget-boolean v4, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v4, :cond_18

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mIsFestival:Z

    if-nez v4, :cond_18

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mIsFestivalModeChanged:Z

    if-nez v4, :cond_18

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->checkBindFestivalWorkspace(Ljava/util/List;)V

    :cond_18
    new-instance v23, Lcom/android/launcher2/LauncherExModel$LoaderTask$12;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher2/LauncherExModel$LoaderTask$12;-><init>(Lcom/android/launcher2/LauncherExModel$LoaderTask;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    move-object/from16 v0, v23

    # invokes: Lcom/android/launcher2/LauncherExModel;->runOnMainThread(Ljava/lang/Runnable;)V
    invoke-static {v4, v0}, Lcom/android/launcher2/LauncherExModel;->access$700(Lcom/android/launcher2/LauncherExModel;Ljava/lang/Runnable;)V

    new-instance v23, Lcom/android/launcher2/LauncherExModel$LoaderTask$13;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-wide/from16 v2, v30

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/LauncherExModel$LoaderTask$13;-><init>(Lcom/android/launcher2/LauncherExModel$LoaderTask;J)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    move-object/from16 v0, v23

    # invokes: Lcom/android/launcher2/LauncherExModel;->runOnMainThread(Ljava/lang/Runnable;)V
    invoke-static {v4, v0}, Lcom/android/launcher2/LauncherExModel;->access$700(Lcom/android/launcher2/LauncherExModel;Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.method private changeScreenIdInAppsDataBase(Ljava/util/Map;)V
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/AppItem;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mIsModeChanged:Z

    move/from16 v26, v0

    if-nez v26, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mIsSecret:Z

    move/from16 v26, v0

    if-eqz v26, :cond_12

    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Long;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AppItem;

    iget-boolean v0, v2, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    move/from16 v26, v0

    if-eqz v26, :cond_2

    iget v0, v2, Lcom/android/launcher2/BaseItem;->mScreen:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_1

    iget v0, v2, Lcom/android/launcher2/BaseItem;->mScreen:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget v0, v2, Lcom/android/launcher2/BaseItem;->mScreen:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_3

    iget v0, v2, Lcom/android/launcher2/BaseItem;->mScreen:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->PAGEINDEX_COMPARATOR:Ljava/util/Comparator;

    move-object/from16 v26, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->PAGEINDEX_COMPARATOR:Ljava/util/Comparator;

    move-object/from16 v26, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v19, Ljava/util/ArrayList;

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v26

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v27

    add-int v25, v26, v27

    move/from16 v0, v25

    new-array v7, v0, [Z

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v24

    const/4 v3, 0x1

    :goto_2
    move/from16 v0, v24

    if-gt v3, v0, :cond_5

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v26

    add-int/lit8 v11, v26, -0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Integer;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v26

    array-length v0, v7

    move/from16 v27, v0

    sub-int v27, v27, v3

    move/from16 v0, v26

    move/from16 v1, v27

    if-lt v0, v1, :cond_5

    array-length v0, v7

    move/from16 v26, v0

    sub-int v26, v26, v3

    const/16 v27, 0x1

    aput-boolean v27, v7, v26

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :goto_3
    array-length v0, v7

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v3, v0, :cond_7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_6

    const/16 v26, 0x1

    aput-boolean v26, v7, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_4
    array-length v0, v7

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v3, v0, :cond_9

    aget-boolean v26, v7, v3

    if-eqz v26, :cond_8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_9
    new-instance v12, Ljava/lang/String;

    invoke-direct {v12}, Ljava/lang/String;-><init>()V

    const/4 v3, 0x0

    :goto_5
    array-length v0, v7

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v3, v0, :cond_b

    aget-boolean v26, v7, v3

    if-eqz v26, :cond_a

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "S"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_a
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "N"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_6

    :cond_b
    const-string v26, "LauncherExModel"

    move-object/from16 v0, v26

    invoke-static {v0, v12}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    :goto_7
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v26

    if-ge v3, v0, :cond_e

    const/4 v10, 0x0

    :goto_8
    array-length v0, v7

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v10, v0, :cond_c

    aget-boolean v26, v7, v10

    if-nez v26, :cond_d

    const/16 v26, 0x1

    aput-boolean v26, v7, v10

    :cond_c
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_d
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    :cond_e
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_f
    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AppItem;

    iget v0, v2, Lcom/android/launcher2/BaseItem;->mScreen:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v26

    move-object/from16 v0, v21

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Integer;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v13

    iget v0, v2, Lcom/android/launcher2/BaseItem;->mScreen:I

    move/from16 v26, v0

    move/from16 v0, v26

    if-eq v0, v13, :cond_f

    iput v13, v2, Lcom/android/launcher2/BaseItem;->mScreen:I

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_10
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_11
    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_17

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AppItem;

    iget v0, v2, Lcom/android/launcher2/BaseItem;->mScreen:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v26

    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Integer;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v16

    iget v0, v2, Lcom/android/launcher2/BaseItem;->mScreen:I

    move/from16 v26, v0

    move/from16 v0, v26

    move/from16 v1, v16

    if-eq v0, v1, :cond_11

    move/from16 v0, v16

    iput v0, v2, Lcom/android/launcher2/BaseItem;->mScreen:I

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_12
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_13
    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_15

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Long;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AppItem;

    iget-boolean v0, v2, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    move/from16 v26, v0

    if-nez v26, :cond_13

    iget v0, v2, Lcom/android/launcher2/BaseItem;->mScreen:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_14

    iget v0, v2, Lcom/android/launcher2/BaseItem;->mScreen:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->PAGEINDEX_COMPARATOR:Ljava/util/Comparator;

    move-object/from16 v26, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_16
    :goto_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_17

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AppItem;

    iget v0, v2, Lcom/android/launcher2/BaseItem;->mScreen:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v13

    iget v0, v2, Lcom/android/launcher2/BaseItem;->mScreen:I

    move/from16 v26, v0

    move/from16 v0, v26

    if-eq v0, v13, :cond_16

    iput v13, v2, Lcom/android/launcher2/BaseItem;->mScreen:I

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_17
    new-instance v15, Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v26

    invoke-direct {v15, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_18

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/AppItem;

    new-instance v9, Lcom/android/launcher2/LauncherSettings$AppOrderModify;

    invoke-direct {v9}, Lcom/android/launcher2/LauncherSettings$AppOrderModify;-><init>()V

    iget-wide v0, v8, Lcom/android/launcher2/BaseItem;->mId:J

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    iput-wide v0, v9, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    iget v0, v8, Lcom/android/launcher2/BaseItem;->mScreen:I

    move/from16 v26, v0

    move/from16 v0, v26

    iput v0, v9, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->screen:I

    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_18
    new-instance v20, Lcom/android/launcher2/LauncherExModel$LoaderTask$32;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v15}, Lcom/android/launcher2/LauncherExModel$LoaderTask$32;-><init>(Lcom/android/launcher2/LauncherExModel$LoaderTask;Ljava/util/ArrayList;)V

    # invokes: Lcom/android/launcher2/LauncherExModel;->runOnWorkerThread(Ljava/lang/Runnable;)V
    invoke-static/range {v20 .. v20}, Lcom/android/launcher2/LauncherExModel;->access$1200(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.method private changeScreenIdInHomeDataBase()V
    .locals 3

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mIsSecret:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getScreenModeForSecret()I

    move-result v1

    if-eq v1, v0, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mIsSecret:Z

    if-nez v1, :cond_2

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getScreenModeForSecret()I

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-boolean v2, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mIsSecret:Z

    invoke-virtual {v1, v2}, Lcom/android/launcher2/LauncherExModel;->updateHomeDataBase(Z)V

    iget-object v1, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-object v1, v1, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    iget-boolean v2, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mIsSecret:Z

    if-eqz v2, :cond_3

    :goto_1
    invoke-static {v1, v0}, Lcom/android/launcher2/LauncherApplication;->setScreenModeForSecret(Landroid/content/Context;I)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private checkBindFestivalWorkspace(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeWidgetItem;",
            ">;)V"
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-object v8, v8, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v8}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "festival_effect_enabled"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_2

    move v1, v6

    :goto_0
    iget-object v8, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-object v8, v8, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v8}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "festival_effect_festival_home"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_3

    move v2, v6

    :goto_1
    iget-object v8, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-object v8, v8, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v8}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "FestivalList"

    invoke-static {v8, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/launcher2/FestivalPageManager;->getFestivalString()Ljava/lang/String;

    move-result-object v4

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    move v3, v6

    :goto_2
    if-nez v3, :cond_0

    invoke-static {v0}, Lcom/android/launcher2/FestivalPageManager;->setFestivalString(Ljava/lang/String;)V

    :cond_0
    const-string v7, "LauncherExModel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkBindFestivalWorkspace:: festivalWidgets : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->getLoaderTaskCallbacks()Lcom/android/launcher2/LauncherModel$Callbacks;

    move-result-object v7

    if-nez v7, :cond_5

    :cond_1
    :goto_3
    return-void

    :cond_2
    move v1, v7

    goto :goto_0

    :cond_3
    move v2, v7

    goto :goto_1

    :cond_4
    move v3, v7

    goto :goto_2

    :cond_5
    new-instance v5, Lcom/android/launcher2/LauncherExModel$LoaderTask$29;

    invoke-direct {v5, p0, p1}, Lcom/android/launcher2/LauncherExModel$LoaderTask$29;-><init>(Lcom/android/launcher2/LauncherExModel$LoaderTask;Ljava/util/List;)V

    iget-object v7, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    # invokes: Lcom/android/launcher2/LauncherExModel;->runOnMainThread(Ljava/lang/Runnable;)V
    invoke-static {v7, v5}, Lcom/android/launcher2/LauncherExModel;->access$700(Lcom/android/launcher2/LauncherExModel;Ljava/lang/Runnable;)V

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    const-string v7, "LauncherExModel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkBindFestivalWorkspace:: insert festivalList : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    iput-boolean v6, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mIsFestival:Z

    invoke-direct {p0}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->bindFestivalPageModeChange()V

    iget-object v7, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    # setter for: Lcom/android/launcher2/LauncherExModel;->mIsCurrentFestivalMode:Z
    invoke-static {v7, v6}, Lcom/android/launcher2/LauncherExModel;->access$1102(Lcom/android/launcher2/LauncherExModel;Z)Z

    new-instance v5, Lcom/android/launcher2/LauncherExModel$LoaderTask$30;

    invoke-direct {v5, p0}, Lcom/android/launcher2/LauncherExModel$LoaderTask$30;-><init>(Lcom/android/launcher2/LauncherExModel$LoaderTask;)V

    iget-object v6, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    # invokes: Lcom/android/launcher2/LauncherExModel;->runOnMainThread(Ljava/lang/Runnable;)V
    invoke-static {v6, v5}, Lcom/android/launcher2/LauncherExModel;->access$700(Lcom/android/launcher2/LauncherExModel;Ljava/lang/Runnable;)V

    goto :goto_3
.end method

.method private checkItemPlacement([[[Lcom/android/launcher2/HomeItem;[[[Lcom/android/launcher2/HomeItem;Lcom/android/launcher2/HomeItem;)Z
    .locals 11

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget v0, p3, Lcom/android/launcher2/BaseItem;->mScreen:I

    iget-wide v7, p3, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v9, -0x65

    cmp-long v7, v7, v9

    if-nez v7, :cond_2

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getMaxScreenCount()I

    move-result v7

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getMaxSecretScreenCount()I

    move-result v8

    add-int v1, v7, v8

    aget-object v7, p1, v1

    iget v8, p3, Lcom/android/launcher2/BaseItem;->mScreen:I

    aget-object v7, v7, v8

    aget-object v7, v7, v5

    if-eqz v7, :cond_1

    sget-boolean v6, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v6, :cond_0

    const-string v6, "LauncherExModel"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error loading shortcut into hotseat "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " into position ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p3, Lcom/android/launcher2/BaseItem;->mScreen:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p3, Lcom/android/launcher2/HomeItem;->cellX:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p3, Lcom/android/launcher2/HomeItem;->cellY:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") occupied by "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, p1, v1

    iget v9, p3, Lcom/android/launcher2/BaseItem;->mScreen:I

    aget-object v8, v8, v9

    aget-object v8, v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v5

    :cond_1
    aget-object v7, p1, v1

    iget v8, p3, Lcom/android/launcher2/BaseItem;->mScreen:I

    aget-object v7, v7, v8

    aput-object p3, v7, v5

    move v5, v6

    goto :goto_0

    :cond_2
    iget-wide v7, p3, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v9, -0x64

    cmp-long v7, v7, v9

    if-eqz v7, :cond_3

    move v5, v6

    goto :goto_0

    :cond_3
    iget-boolean v7, p3, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    if-eqz v7, :cond_4

    move-object v2, p2

    :goto_1
    iget v3, p3, Lcom/android/launcher2/HomeItem;->cellX:I

    :goto_2
    iget v7, p3, Lcom/android/launcher2/HomeItem;->cellX:I

    iget v8, p3, Lcom/android/launcher2/HomeItem;->spanX:I

    add-int/2addr v7, v8

    if-ge v3, v7, :cond_7

    iget v4, p3, Lcom/android/launcher2/HomeItem;->cellY:I

    :goto_3
    iget v7, p3, Lcom/android/launcher2/HomeItem;->cellY:I

    iget v8, p3, Lcom/android/launcher2/HomeItem;->spanY:I

    add-int/2addr v7, v8

    if-ge v4, v7, :cond_6

    aget-object v7, v2, v0

    aget-object v7, v7, v3

    aget-object v7, v7, v4

    if-eqz v7, :cond_5

    sget-boolean v6, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v6, :cond_0

    const-string v6, "LauncherExModel"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error loading shortcut "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " into cell ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p3, Lcom/android/launcher2/BaseItem;->mScreen:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") occupied by "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v2, v0

    aget-object v8, v8, v3

    aget-object v8, v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    move-object v2, p1

    goto :goto_1

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    iget v3, p3, Lcom/android/launcher2/HomeItem;->cellX:I

    :goto_4
    iget v5, p3, Lcom/android/launcher2/HomeItem;->cellX:I

    iget v7, p3, Lcom/android/launcher2/HomeItem;->spanX:I

    add-int/2addr v5, v7

    if-ge v3, v5, :cond_9

    iget v4, p3, Lcom/android/launcher2/HomeItem;->cellY:I

    :goto_5
    iget v5, p3, Lcom/android/launcher2/HomeItem;->cellY:I

    iget v7, p3, Lcom/android/launcher2/HomeItem;->spanY:I

    add-int/2addr v5, v7

    if-ge v4, v5, :cond_8

    aget-object v5, v2, v0

    aget-object v5, v5, v3

    aput-object p3, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_9
    move v5, v6

    goto/16 :goto_0
.end method

.method private getLoaderTaskCallbacks()Lcom/android/launcher2/LauncherModel$Callbacks;
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-object v3, v2, Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-boolean v2, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mStopped:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-object v2, v2, Lcom/android/launcher2/LauncherExModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/launcher2/LauncherModel$Callbacks;

    move-object v1, v0

    :cond_0
    monitor-exit v3

    return-object v1

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private loadAllApps()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-object v1, v1, Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;

    iget-boolean v2, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mIsSecret:Z

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuAppLoader;->loadAllItems(Z)Ljava/util/Map;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mStopped:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/launcher2/LauncherExModel;->mAllAppsLoaded:Z

    iget-object v1, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-object v1, v1, Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;

    new-instance v2, Lcom/android/launcher2/LauncherExModel$LoaderTask$16;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher2/LauncherExModel$LoaderTask$16;-><init>(Lcom/android/launcher2/LauncherExModel$LoaderTask;Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    :cond_0
    return-object v0
.end method

.method private loadAndBindAllApps()V
    .locals 4

    const-string v1, "LauncherExModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadAndBindAllApps mAllAppsLoaded: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-boolean v3, v3, Lcom/android/launcher2/LauncherExModel;->mAllAppsLoaded:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mRefreshRequired: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-boolean v3, v3, Lcom/android/launcher2/LauncherExModel;->mRefreshRequired:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-boolean v1, v1, Lcom/android/launcher2/LauncherExModel;->mAllAppsLoaded:Z

    if-nez v1, :cond_3

    invoke-direct {p0}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->loadAllApps()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->getLoaderTaskCallbacks()Lcom/android/launcher2/LauncherModel$Callbacks;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "LauncherExModel"

    const-string v2, "LoaderTask aborted or running with no launcher (bindAllApps)"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-object v1, v1, Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;

    new-instance v2, Lcom/android/launcher2/LauncherExModel$LoaderTask$14;

    invoke-direct {v2, p0}, Lcom/android/launcher2/LauncherExModel$LoaderTask$14;-><init>(Lcom/android/launcher2/LauncherExModel$LoaderTask;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_2

    invoke-direct {p0, v0}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->changeScreenIdInAppsDataBase(Ljava/util/Map;)V

    :cond_2
    iget-boolean v1, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mIsSecret:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->bindSecretAllApps()V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-boolean v1, v1, Lcom/android/launcher2/LauncherExModel;->mRefreshRequired:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-object v1, v1, Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppLoader;->refreshAllApps()V

    iget-boolean v1, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mStopped:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->postModelRefreshed()V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-boolean v1, v1, Lcom/android/launcher2/LauncherExModel;->mAllAppsLoaded:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mIsSecret:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->bindSecretAllApps()V

    goto :goto_0
.end method

.method private loadAndBindWorkspace()V
    .locals 3

    const-string v0, "LauncherExModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadAndBindWorkspace mWorkspaceLoaded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-boolean v2, v2, Lcom/android/launcher2/LauncherExModel;->mWorkspaceLoaded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mRefreshRequired: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-boolean v2, v2, Lcom/android/launcher2/LauncherExModel;->mRefreshRequired:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherModel;->unbindAllHomeItemsOnMainThread()V

    iget-object v0, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-boolean v0, v0, Lcom/android/launcher2/LauncherExModel;->mWorkspaceLoaded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-boolean v0, v0, Lcom/android/launcher2/LauncherExModel;->mRefreshRequired:Z

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/android/launcher2/LauncherModel;->sHomeItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lcom/android/launcher2/LauncherModel;->sAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lcom/android/launcher2/LauncherModel;->sSamsungWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lcom/android/launcher2/LauncherModel;->sSurfaceWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lcom/android/launcher2/LauncherModel;->sHomeFolders:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sget-object v0, Lcom/android/launcher2/LauncherModel;->sHomeItemIdMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sget-object v0, Lcom/android/launcher2/LauncherModel;->sDbIconCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    invoke-direct {p0}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->loadWorkspace()V

    iget-boolean v0, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mStopped:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/launcher2/LauncherModel;->sDbIconCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mStopped:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->changeScreenIdInHomeDataBase()V

    invoke-direct {p0}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->bindWorkspace()V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher2/LauncherExModel;->mWorkspaceLoaded:Z

    goto :goto_0
.end method

.method private loadWorkspace()V
    .locals 78

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v71

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-object v5, v5, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-object v5, v5, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-object v5, v5, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-static {v5}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v75

    invoke-virtual {v14}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v49

    new-instance v53, Ljava/util/ArrayList;

    invoke-direct/range {v53 .. v53}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI()Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getMaxScreenCount()I

    move-result v5

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getMaxSecretScreenCount()I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getMaxFestivalScreenCount()I

    move-result v6

    add-int v56, v5, v6

    add-int/lit8 v5, v56, 0x1

    sget v6, Lcom/android/launcher2/LauncherModel;->sCellCountX:I

    add-int/lit8 v6, v6, 0x1

    sget v8, Lcom/android/launcher2/LauncherModel;->sCellCountY:I

    add-int/lit8 v8, v8, 0x1

    filled-new-array {v5, v6, v8}, [I

    move-result-object v5

    const-class v6, Lcom/android/launcher2/HomeItem;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v58

    check-cast v58, [[[Lcom/android/launcher2/HomeItem;

    add-int/lit8 v5, v56, 0x1

    sget v6, Lcom/android/launcher2/LauncherModel;->sCellCountX:I

    add-int/lit8 v6, v6, 0x1

    sget v8, Lcom/android/launcher2/LauncherModel;->sCellCountY:I

    add-int/lit8 v8, v8, 0x1

    filled-new-array {v5, v6, v8}, [I

    move-result-object v5

    const-class v6, Lcom/android/launcher2/HomeItem;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, [[[Lcom/android/launcher2/HomeItem;

    const/16 v48, 0x0

    :try_start_0
    const-string v5, "_id"

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v44

    const-string v5, "intent"

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v47

    const-string v5, "title"

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    const-string v5, "iconType"

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    const-string v5, "icon"

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    const-string v5, "iconPackage"

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    const-string v5, "iconResource"

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    const-string v5, "container"

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v36

    const-string v5, "itemType"

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v52

    const-string v5, "appWidgetId"

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v27

    const-string v5, "screen"

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v67

    const-string v5, "cellX"

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v28

    const-string v5, "cellY"

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v29

    const-string v5, "spanX"

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v68

    const-string v5, "spanY"

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v69

    const-string v5, "color"

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v32

    const-string v5, "secret"

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    const-string v5, "festival"

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v38

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mStopped:Z

    if-nez v5, :cond_21

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_21

    :try_start_1
    move/from16 v0, v52

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v51

    sparse-switch v51, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    move/from16 v0, v47

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v46

    const/4 v5, 0x0

    :try_start_2
    move-object/from16 v0, v46

    invoke-static {v0, v5}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v7

    if-eqz v49, :cond_1

    const/4 v5, 0x0

    :try_start_3
    invoke-virtual {v14, v7, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v63

    if-eqz v63, :cond_0

    move-object/from16 v0, v63

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v5, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    :cond_1
    if-nez v51, :cond_5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-object v8, v6, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    move-object v6, v14

    invoke-virtual/range {v5 .. v12}, Lcom/android/launcher2/LauncherModel;->getShortcutInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;Landroid/database/Cursor;III)Lcom/android/launcher2/HomeShortcutItem;

    move-result-object v45

    :goto_1
    if-eqz v45, :cond_b

    move-object/from16 v0, v45

    iput-object v7, v0, Lcom/android/launcher2/HomeShortcutItem;->intent:Landroid/content/Intent;

    move/from16 v0, v44

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    move-object/from16 v0, v45

    iput-wide v5, v0, Lcom/android/launcher2/BaseItem;->mId:J

    move/from16 v0, v36

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v34

    move-wide/from16 v0, v34

    move-object/from16 v2, v45

    iput-wide v0, v2, Lcom/android/launcher2/HomeItem;->container:J

    move/from16 v0, v67

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, v45

    iput v5, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    move/from16 v0, v28

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, v45

    iput v5, v0, Lcom/android/launcher2/HomeItem;->cellX:I

    move/from16 v0, v29

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, v45

    iput v5, v0, Lcom/android/launcher2/HomeItem;->cellY:I

    if-lez v12, :cond_9

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_9

    const/4 v5, 0x1

    :goto_2
    move-object/from16 v0, v45

    iput-boolean v5, v0, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    move-object/from16 v2, v59

    move-object/from16 v3, v45

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->checkItemPlacement([[[Lcom/android/launcher2/HomeItem;[[[Lcom/android/launcher2/HomeItem;Lcom/android/launcher2/HomeItem;)Z

    move-result v5

    if-nez v5, :cond_2

    move-object/from16 v0, v45

    iget-wide v5, v0, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v15, -0x65

    cmp-long v5, v5, v15

    if-nez v5, :cond_2

    const-string v5, "LauncherExModel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "wrong hotseat item : we remove the item in launcher.db - item="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v0, v44

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v42

    const/16 v48, 0x1

    :cond_2
    const-wide/16 v5, -0x64

    cmp-long v5, v34, v5

    if-eqz v5, :cond_3

    const-wide/16 v5, -0x65

    cmp-long v5, v34, v5

    if-nez v5, :cond_a

    :cond_3
    sget-object v5, Lcom/android/launcher2/LauncherModel;->sHomeItems:Ljava/util/ArrayList;

    move-object/from16 v0, v45

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    sget-object v5, Lcom/android/launcher2/LauncherModel;->sHomeItemIdMap:Ljava/util/HashMap;

    move-object/from16 v0, v45

    iget-wide v15, v0, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v45

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    sget-object v6, Lcom/android/launcher2/LauncherModel;->sDbIconCache:Ljava/util/HashMap;

    move-object/from16 v0, v45

    invoke-virtual {v5, v6, v0, v9, v10}, Lcom/android/launcher2/LauncherModel;->queueIconToBeChecked(Ljava/util/HashMap;Lcom/android/launcher2/HomeShortcutItem;Landroid/database/Cursor;I)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v37

    :try_start_4
    sget-boolean v5, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v5, :cond_0

    const-string v5, "LauncherExModel"

    const-string v6, "Desktop items loading interrupted:"

    move-object/from16 v0, v37

    invoke-static {v5, v6, v0}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v5

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mStopped:Z

    if-eqz v6, :cond_4

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    const/4 v8, 0x0

    iput-boolean v8, v6, Lcom/android/launcher2/LauncherExModel;->mWorkspaceLoaded:Z

    :cond_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v5

    :catch_1
    move-exception v37

    goto/16 :goto_0

    :cond_5
    if-eqz v7, :cond_8

    :try_start_5
    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Bundle;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_8

    sget-boolean v5, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v5, :cond_6

    const-string v5, "LauncherExModel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "loadWorkspace : intent.getExtras().isEmpty = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Bundle;->isEmpty()Z

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "LauncherExModel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "loadWorkspace : intent.getExtras().isEmpty = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Launcher_EnableInegratedLauncher"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-object v0, v5, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    move-object/from16 v16, v0

    move-object v15, v7

    move-object/from16 v17, v9

    move/from16 v21, v10

    move/from16 v22, v11

    invoke-virtual/range {v13 .. v22}, Lcom/android/launcher2/LauncherModel;->getShortcutInfoExtra(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;Landroid/database/Cursor;IIIII)Lcom/android/launcher2/HomeShortcutItem;

    move-result-object v45

    goto/16 :goto_1

    :cond_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-object v8, v6, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    move-object v6, v14

    invoke-virtual/range {v5 .. v11}, Lcom/android/launcher2/LauncherModel;->getShortcutInfoExtra(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;Landroid/database/Cursor;II)Lcom/android/launcher2/HomeShortcutItem;

    move-result-object v45

    goto/16 :goto_1

    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-object v0, v5, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    move-object/from16 v17, v0

    move-object/from16 v16, v9

    move/from16 v21, v10

    move/from16 v22, v11

    move-object/from16 v23, v14

    move-object/from16 v24, v7

    invoke-virtual/range {v15 .. v24}, Lcom/android/launcher2/LauncherModel;->getShortcutInfo(Landroid/database/Cursor;Landroid/content/Context;IIIIILandroid/content/pm/PackageManager;Landroid/content/Intent;)Lcom/android/launcher2/HomeShortcutItem;

    move-result-object v45

    goto/16 :goto_1

    :cond_9
    const/4 v5, 0x0

    goto/16 :goto_2

    :cond_a
    sget-object v5, Lcom/android/launcher2/LauncherModel;->sHomeFolders:Ljava/util/HashMap;

    move-wide/from16 v0, v34

    invoke-static {v5, v0, v1}, Lcom/android/launcher2/LauncherModel;->findOrMakeFolder(Ljava/util/HashMap;J)Lcom/android/launcher2/HomeFolderItem;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/android/launcher2/HomeFolderItem;->loadItem(Lcom/android/launcher2/HomeItem;)V

    goto/16 :goto_3

    :cond_b
    move/from16 v0, v44

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v42

    invoke-static/range {v42 .. v43}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v5, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v5, :cond_0

    const-string v5, "LauncherExModel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error loading shortcut "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v42

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", removing it"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_1
    move/from16 v0, v44

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v42

    sget-object v5, Lcom/android/launcher2/LauncherModel;->sHomeFolders:Ljava/util/HashMap;

    move-wide/from16 v0, v42

    invoke-static {v5, v0, v1}, Lcom/android/launcher2/LauncherModel;->findOrMakeFolder(Ljava/util/HashMap;J)Lcom/android/launcher2/HomeFolderItem;

    move-result-object v39

    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v39

    iput-object v5, v0, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    move-wide/from16 v0, v42

    move-object/from16 v2, v39

    iput-wide v0, v2, Lcom/android/launcher2/BaseItem;->mId:J

    move/from16 v0, v36

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v34

    move-wide/from16 v0, v34

    move-object/from16 v2, v39

    iput-wide v0, v2, Lcom/android/launcher2/HomeItem;->container:J

    move/from16 v0, v67

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, v39

    iput v5, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    move/from16 v0, v28

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, v39

    iput v5, v0, Lcom/android/launcher2/HomeItem;->cellX:I

    move/from16 v0, v29

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, v39

    iput v5, v0, Lcom/android/launcher2/HomeItem;->cellY:I

    move/from16 v0, v32

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, v39

    iput v5, v0, Lcom/android/launcher2/BaseItem;->mColor:I

    if-lez v12, :cond_e

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_e

    const/4 v5, 0x1

    :goto_4
    move-object/from16 v0, v39

    iput-boolean v5, v0, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    move-object/from16 v2, v59

    move-object/from16 v3, v39

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->checkItemPlacement([[[Lcom/android/launcher2/HomeItem;[[[Lcom/android/launcher2/HomeItem;Lcom/android/launcher2/HomeItem;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-wide/16 v5, -0x64

    cmp-long v5, v34, v5

    if-eqz v5, :cond_c

    const-wide/16 v5, -0x65

    cmp-long v5, v34, v5

    if-nez v5, :cond_d

    :cond_c
    sget-object v5, Lcom/android/launcher2/LauncherModel;->sHomeItems:Ljava/util/ArrayList;

    move-object/from16 v0, v39

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    sget-object v5, Lcom/android/launcher2/LauncherModel;->sHomeItemIdMap:Ljava/util/HashMap;

    move-object/from16 v0, v39

    iget-wide v15, v0, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v39

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/launcher2/LauncherModel;->sHomeFolders:Ljava/util/HashMap;

    move-object/from16 v0, v39

    iget-wide v15, v0, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v39

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_e
    const/4 v5, 0x0

    goto :goto_4

    :sswitch_2
    move/from16 v0, v27

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    move/from16 v0, v44

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v42

    move-object/from16 v0, v75

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v62

    if-nez v62, :cond_f

    if-lez v12, :cond_f

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_f

    move-object/from16 v0, v75

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getSecretAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v62

    :cond_f
    if-nez v62, :cond_10

    const/4 v5, -0x1

    move/from16 v0, v26

    if-eq v0, v5, :cond_10

    if-lez v38, :cond_10

    move/from16 v0, v38

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_10

    invoke-static/range {v42 .. v43}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    if-nez v49, :cond_12

    const/4 v5, -0x1

    move/from16 v0, v26

    if-eq v0, v5, :cond_12

    if-nez v62, :cond_12

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Deleting widget that isn\'t installed anymore: id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v42

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " appWidgetId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v55

    sget-boolean v5, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v5, :cond_11

    const-string v5, "LauncherExModel"

    move-object/from16 v0, v55

    invoke-static {v5, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    sget-object v5, Lcom/android/launcher2/HomeView;->sDumpLogs:Ljava/util/ArrayList;

    move-object/from16 v0, v55

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static/range {v42 .. v43}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_12
    const/16 v40, 0x0

    if-lez v12, :cond_17

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_17

    const/16 v50, 0x1

    :goto_5
    if-eqz v50, :cond_13

    sget-object v5, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/launcher2/MenuAppModel;->setHasPreSecretWidget(Z)V

    :cond_13
    if-eqz v50, :cond_14

    const/4 v5, -0x1

    move/from16 v0, v26

    if-ne v0, v5, :cond_14

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-object v5, v5, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    const-string v6, "com.sec.android.app.launcher.prefs"

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v8}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v61

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PrefsPreSecret"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v42 .. v43}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, v61

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v60

    if-eqz v60, :cond_14

    const-string v5, ":"

    move-object/from16 v0, v60

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v33

    new-instance v31, Landroid/content/ComponentName;

    const/4 v5, 0x0

    aget-object v5, v33, v5

    const/4 v6, 0x1

    aget-object v6, v33, v6

    move-object/from16 v0, v31

    invoke-direct {v0, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v31, :cond_18

    const/16 v40, 0x0

    :cond_14
    :goto_6
    if-nez v40, :cond_15

    if-eqz v62, :cond_15

    new-instance v40, Lcom/android/launcher2/HomeWidgetItem;

    move-object/from16 v0, v40

    move-object/from16 v1, v62

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/HomeWidgetItem;-><init>(Landroid/appwidget/AppWidgetProviderInfo;I)V

    :cond_15
    if-eqz v40, :cond_0

    move-wide/from16 v0, v42

    move-object/from16 v2, v40

    iput-wide v0, v2, Lcom/android/launcher2/BaseItem;->mId:J

    move/from16 v0, v67

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, v40

    iput v5, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    move/from16 v0, v28

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, v40

    iput v5, v0, Lcom/android/launcher2/HomeItem;->cellX:I

    move/from16 v0, v29

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, v40

    iput v5, v0, Lcom/android/launcher2/HomeItem;->cellY:I

    move/from16 v0, v68

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, v40

    iput v5, v0, Lcom/android/launcher2/HomeItem;->spanX:I

    move/from16 v0, v69

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, v40

    iput v5, v0, Lcom/android/launcher2/HomeItem;->spanY:I

    move/from16 v0, v50

    move-object/from16 v1, v40

    iput-boolean v0, v1, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    if-lez v38, :cond_16

    move/from16 v0, v38

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_16

    move/from16 v0, v38

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, v40

    iput v5, v0, Lcom/android/launcher2/HomeItem;->mFestivalType:I

    :cond_16
    move/from16 v0, v36

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    int-to-long v0, v5

    move-wide/from16 v34, v0

    const-wide/16 v5, -0x64

    cmp-long v5, v34, v5

    if-eqz v5, :cond_19

    const-wide/16 v5, -0x65

    cmp-long v5, v34, v5

    if-eqz v5, :cond_19

    const-string v5, "LauncherExModel"

    const-string v6, "Widget found where container != CONTAINER_DESKTOP nor CONTAINER_HOTSEAT - ignoring!"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_17
    const/16 v50, 0x0

    goto/16 :goto_5

    :cond_18
    new-instance v40, Lcom/android/launcher2/HomeWidgetItem;

    move-object/from16 v0, v40

    move-object/from16 v1, v31

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/HomeWidgetItem;-><init>(Landroid/content/ComponentName;I)V

    goto/16 :goto_6

    :cond_19
    move/from16 v0, v36

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    int-to-long v5, v5

    move-object/from16 v0, v40

    iput-wide v5, v0, Lcom/android/launcher2/HomeItem;->container:J

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    move-object/from16 v2, v59

    move-object/from16 v3, v40

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->checkItemPlacement([[[Lcom/android/launcher2/HomeItem;[[[Lcom/android/launcher2/HomeItem;Lcom/android/launcher2/HomeItem;)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/android/launcher2/LauncherModel;->sHomeItemIdMap:Ljava/util/HashMap;

    move-object/from16 v0, v40

    iget-wide v15, v0, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v40

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/launcher2/LauncherModel;->sAppWidgets:Ljava/util/ArrayList;

    move-object/from16 v0, v40

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_3
    new-instance v74, Lcom/android/launcher2/SamsungWidgetItem;

    invoke-direct/range {v74 .. v74}, Lcom/android/launcher2/SamsungWidgetItem;-><init>()V

    move/from16 v0, v44

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v42

    move-wide/from16 v0, v42

    move-object/from16 v2, v74

    iput-wide v0, v2, Lcom/android/launcher2/BaseItem;->mId:J

    move/from16 v0, v67

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, v74

    iput v5, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    move/from16 v0, v28

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, v74

    iput v5, v0, Lcom/android/launcher2/HomeItem;->cellX:I

    move/from16 v0, v29

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, v74

    iput v5, v0, Lcom/android/launcher2/HomeItem;->cellY:I

    move/from16 v0, v68

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, v74

    iput v5, v0, Lcom/android/launcher2/HomeItem;->spanX:I

    move/from16 v0, v69

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, v74

    iput v5, v0, Lcom/android/launcher2/HomeItem;->spanY:I

    move/from16 v0, v27

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    int-to-long v5, v5

    move-object/from16 v0, v74

    iput-wide v5, v0, Lcom/android/launcher2/SamsungWidgetItem;->widgetId:J

    if-lez v12, :cond_1a

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_1a

    const/4 v5, 0x1

    :goto_7
    move-object/from16 v0, v74

    iput-boolean v5, v0, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    move/from16 v0, v36

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    int-to-long v0, v5

    move-wide/from16 v34, v0

    const-wide/16 v5, -0x64

    cmp-long v5, v34, v5

    if-eqz v5, :cond_1b

    const-wide/16 v5, -0x65

    cmp-long v5, v34, v5

    if-eqz v5, :cond_1b

    const-string v5, "LauncherExModel"

    const-string v6, "Samsung Widget found where container != CONTAINER_DESKTOP nor CONTAINER_HOTSEAT - ignoring!"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1a
    const/4 v5, 0x0

    goto :goto_7

    :cond_1b
    move/from16 v0, v36

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    int-to-long v5, v5

    move-object/from16 v0, v74

    iput-wide v5, v0, Lcom/android/launcher2/HomeItem;->container:J

    move/from16 v0, v47

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v73

    const/4 v7, 0x0

    const/4 v5, 0x0

    :try_start_6
    move-object/from16 v0, v73

    invoke-static {v0, v5}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_6
    .catch Ljava/net/URISyntaxException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v7

    :try_start_7
    move-object/from16 v0, v74

    iput-object v7, v0, Lcom/android/launcher2/SamsungWidgetItem;->intent:Landroid/content/Intent;

    const/4 v5, 0x0

    invoke-virtual {v14, v7, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v64

    if-nez v64, :cond_1c

    const-string v5, "LauncherExModel"

    const-string v6, "Can\'t resolve SamsungWidget\'s activity. Deleting it."

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {v42 .. v43}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    :catch_2
    move-exception v37

    goto/16 :goto_0

    :cond_1c
    :try_start_8
    move-object/from16 v0, v64

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v14, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    move-object/from16 v0, p0

    move-object/from16 v1, v58

    move-object/from16 v2, v59

    move-object/from16 v3, v74

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->checkItemPlacement([[[Lcom/android/launcher2/HomeItem;[[[Lcom/android/launcher2/HomeItem;Lcom/android/launcher2/HomeItem;)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/android/launcher2/LauncherModel;->sHomeItemIdMap:Ljava/util/HashMap;

    move-object/from16 v0, v74

    iget-wide v15, v0, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v74

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/launcher2/LauncherModel;->sSamsungWidgets:Ljava/util/ArrayList;

    move-object/from16 v0, v74

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :catch_3
    move-exception v37

    const-string v5, "LauncherExModel"

    const-string v6, "SamsungWidget\'s apk has move to sdcard and unmounted. Deleting it."

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {v42 .. v43}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_4
    move/from16 v0, v47

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result-object v73

    const/4 v7, 0x0

    const/4 v5, 0x0

    :try_start_a
    move-object/from16 v0, v73

    invoke-static {v0, v5}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_a
    .catch Ljava/net/URISyntaxException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result-object v7

    :try_start_b
    sget-object v57, Lcom/android/launcher2/SurfaceWidgetPackageManager;->INST:Lcom/android/launcher2/SurfaceWidgetPackageManager;

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, v57

    invoke-virtual {v0, v5, v6}, Lcom/android/launcher2/SurfaceWidgetPackageManager;->findWidget(Landroid/content/ComponentName;Ljava/lang/String;)Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    move-result-object v70

    move/from16 v0, v44

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v42

    if-nez v70, :cond_1d

    const-string v5, "LauncherExModel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SurfaceWidget-"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "\'s provider info could not be found. Deleting it."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {v42 .. v43}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :catch_4
    move-exception v37

    goto/16 :goto_0

    :cond_1d
    new-instance v66, Lcom/android/launcher2/SurfaceWidgetItem;

    invoke-direct/range {v66 .. v66}, Lcom/android/launcher2/SurfaceWidgetItem;-><init>()V

    move-wide/from16 v0, v42

    move-object/from16 v2, v66

    iput-wide v0, v2, Lcom/android/launcher2/BaseItem;->mId:J

    move/from16 v0, v67

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, v66

    iput v5, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    move/from16 v0, v28

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, v66

    iput v5, v0, Lcom/android/launcher2/HomeItem;->cellX:I

    move/from16 v0, v29

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, v66

    iput v5, v0, Lcom/android/launcher2/HomeItem;->cellY:I

    move/from16 v0, v68

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, v66

    iput v5, v0, Lcom/android/launcher2/HomeItem;->spanX:I

    move/from16 v0, v69

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, v66

    iput v5, v0, Lcom/android/launcher2/HomeItem;->spanY:I

    move/from16 v0, v27

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    int-to-long v5, v5

    move-object/from16 v0, v66

    iput-wide v5, v0, Lcom/android/launcher2/SurfaceWidgetItem;->mWidgetId:J

    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "com.samsung.sec.android.SURFACE_WIDGET.themename"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v66

    iput-object v5, v0, Lcom/android/launcher2/SurfaceWidgetItem;->mThemeName:Ljava/lang/String;

    if-lez v12, :cond_1e

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_1e

    const/4 v5, 0x1

    :goto_8
    move-object/from16 v0, v66

    iput-boolean v5, v0, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    move/from16 v0, v36

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    int-to-long v0, v5

    move-wide/from16 v34, v0

    const-wide/16 v5, -0x64

    cmp-long v5, v34, v5

    if-eqz v5, :cond_1f

    const-wide/16 v5, -0x65

    cmp-long v5, v34, v5

    if-eqz v5, :cond_1f

    const-string v5, "LauncherExModel"

    const-string v6, "Surface Widget found where container != CONTAINER_DESKTOP nor CONTAINER_HOTSEAT - ignoring!"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1e
    const/4 v5, 0x0

    goto :goto_8

    :cond_1f
    move/from16 v0, v36

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    int-to-long v5, v5

    move-object/from16 v0, v66

    iput-wide v5, v0, Lcom/android/launcher2/HomeItem;->container:J

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    move-object/from16 v0, v66

    iput-object v5, v0, Lcom/android/launcher2/SurfaceWidgetItem;->mComponentName:Landroid/content/ComponentName;

    const-string v5, "instance"

    const/4 v6, -0x1

    invoke-virtual {v7, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    move-object/from16 v0, v66

    iput v5, v0, Lcom/android/launcher2/SurfaceWidgetItem;->mInstance:I

    sget-boolean v5, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v5, :cond_20

    const-string v5, "LauncherExModel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "LauncherModel read out SurfaceWidgetItem mInstance = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v66

    iget v8, v0, Lcom/android/launcher2/SurfaceWidgetItem;->mInstance:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    move-object/from16 v0, p0

    move-object/from16 v1, v58

    move-object/from16 v2, v59

    move-object/from16 v3, v66

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->checkItemPlacement([[[Lcom/android/launcher2/HomeItem;[[[Lcom/android/launcher2/HomeItem;Lcom/android/launcher2/HomeItem;)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/android/launcher2/LauncherModel;->sHomeItemIdMap:Ljava/util/HashMap;

    move-object/from16 v0, v66

    iget-wide v15, v0, Lcom/android/launcher2/BaseItem;->mId:J

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v66

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/launcher2/LauncherModel;->sSurfaceWidgets:Ljava/util/ArrayList;

    move-object/from16 v0, v66

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_0

    :cond_21
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mStopped:Z

    if-eqz v5, :cond_22

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_22

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/launcher2/LauncherExModel;->mWorkspaceLoaded:Z

    :cond_22
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    if-eqz v48, :cond_23

    sget-object v5, Lcom/android/launcher2/LauncherModel;->sHomeItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->rearrangeHotseatData(Ljava/util/ArrayList;)V

    :cond_23
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    sget-object v6, Lcom/android/launcher2/LauncherModel;->sHomeFolders:Ljava/util/HashMap;

    invoke-virtual {v5, v6}, Lcom/android/launcher2/LauncherModel;->updateHiddenAddButtonInHomeFolder(Ljava/util/Map;)V

    invoke-virtual/range {v53 .. v53}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_25

    invoke-static {}, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v30

    invoke-virtual/range {v53 .. v53}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v41

    :cond_24
    :goto_9
    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_25

    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v42

    const-string v5, "LauncherExModel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Removed id = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v42

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v30, :cond_24

    const/4 v5, 0x0

    :try_start_c
    move-wide/from16 v0, v42

    invoke-static {v0, v1, v5}, Lcom/android/launcher2/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v0, v5, v6, v8}, Landroid/content/ContentProviderClient;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_5

    goto :goto_9

    :catch_5
    move-exception v37

    sget-boolean v5, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v5, :cond_24

    const-string v5, "LauncherExModel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not remove id = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v42

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_25
    const-string v5, "LauncherExModel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "loaded workspace in "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    sub-long v15, v15, v71

    move-wide v0, v15

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "ms"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "LauncherExModel"

    const-string v6, "workspace layout: "

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v77, 0x0

    :goto_a
    sget v5, Lcom/android/launcher2/LauncherModel;->sCellCountY:I

    move/from16 v0, v77

    if-ge v0, v5, :cond_2a

    const-string v54, ""

    const/16 v65, 0x0

    :goto_b
    move/from16 v0, v65

    move/from16 v1, v56

    if-ge v0, v1, :cond_29

    if-lez v65, :cond_26

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v54

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " | "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    :cond_26
    const/16 v76, 0x0

    :goto_c
    sget v5, Lcom/android/launcher2/LauncherModel;->sCellCountX:I

    move/from16 v0, v76

    if-ge v0, v5, :cond_28

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v54

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v5, v58, v65

    aget-object v5, v5, v76

    aget-object v5, v5, v77

    if-eqz v5, :cond_27

    const-string v5, "#"

    :goto_d
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    add-int/lit8 v76, v76, 0x1

    goto :goto_c

    :cond_27
    const-string v5, "."

    goto :goto_d

    :cond_28
    add-int/lit8 v65, v65, 0x1

    goto :goto_b

    :cond_29
    const-string v5, "LauncherExModel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[ "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v54

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " ]"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v77, v77, 0x1

    goto :goto_a

    :cond_2a
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x384 -> :sswitch_3
        0x385 -> :sswitch_4
    .end sparse-switch
.end method

.method private postModelRefreshed()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;

    new-instance v1, Lcom/android/launcher2/LauncherExModel$LoaderTask$15;

    invoke-direct {v1, p0}, Lcom/android/launcher2/LauncherExModel$LoaderTask$15;-><init>(Lcom/android/launcher2/LauncherExModel$LoaderTask;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private rearrangeHotseatData(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/HomeItem;

    iget-wide v3, v3, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v5, -0x65

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/HomeItem;

    iput v2, v3, Lcom/android/launcher2/BaseItem;->mScreen:I

    iget-object v3, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-object v3, v3, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/HomeItem;

    invoke-static {v4, v3}, Lcom/android/launcher2/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private runBindFestivalPage()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-boolean v0, v0, Lcom/android/launcher2/LauncherExModel;->mWorkspaceLoaded:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Expecting Workspace to be loaded"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-object v1, v0, Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    # getter for: Lcom/android/launcher2/LauncherExModel;->mIsLoaderTaskRunning:Z
    invoke-static {v0}, Lcom/android/launcher2/LauncherExModel;->access$400(Lcom/android/launcher2/LauncherExModel;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Error! Background loading is already running"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->bindFestivalPageModeChange()V

    invoke-direct {p0}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->bindFestivalWorkspace()V

    return-void
.end method

.method private runBindSecretPage()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-boolean v0, v0, Lcom/android/launcher2/LauncherExModel;->mAllAppsLoaded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-boolean v0, v0, Lcom/android/launcher2/LauncherExModel;->mWorkspaceLoaded:Z

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Expecting AllApps and Workspace to be loaded"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-object v1, v0, Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    # getter for: Lcom/android/launcher2/LauncherExModel;->mIsLoaderTaskRunning:Z
    invoke-static {v0}, Lcom/android/launcher2/LauncherExModel;->access$400(Lcom/android/launcher2/LauncherExModel;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Error! Background loading is already running"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->bindSecretPageModeChange()V

    invoke-direct {p0}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->changeScreenIdInHomeDataBase()V

    invoke-direct {p0}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->bindSecretWorkspace()V

    invoke-direct {p0}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->bindSecretAllApps()V

    return-void
.end method

.method private waitForIdle()V
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-object v2, v2, Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;

    new-instance v3, Lcom/android/launcher2/LauncherExModel$LoaderTask$1;

    invoke-direct {v3, p0}, Lcom/android/launcher2/LauncherExModel$LoaderTask$1;-><init>(Lcom/android/launcher2/LauncherExModel$LoaderTask;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher2/DeferredHandler;->postIdle(Ljava/lang/Runnable;)V

    :goto_0
    iget-boolean v2, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mStopped:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mStep1Finished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0

    :cond_0
    :try_start_2
    const-string v2, "LauncherExModel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "waited "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms for previous step to finish binding"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method


# virtual methods
.method public dumpState()V
    .locals 3

    sget-boolean v0, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v0, :cond_0

    const-string v0, "LauncherExModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLoaderTask.mIsLaunching="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mIsLaunching:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "LauncherExModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLoaderTask.mStopped="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mStopped:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "LauncherExModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLoaderTask.mStep1Finished="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mStep1Finished:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "LauncherExModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mItems size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/LauncherModel;->sHomeItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method isLaunching()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mIsLaunching:Z

    return v0
.end method

.method public run()V
    .locals 8

    const/16 v4, 0xa

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-object v6, v3, Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    iget-object v3, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    const/4 v7, 0x1

    # setter for: Lcom/android/launcher2/LauncherExModel;->mIsLoaderTaskRunning:Z
    invoke-static {v3, v7}, Lcom/android/launcher2/LauncherExModel;->access$402(Lcom/android/launcher2/LauncherExModel;Z)Z

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "LauncherExModel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Begin LoaderTask: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mStopped:Z

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    const-string v3, "LauncherExModel"

    const-string v4, "Comparing loaded icons to database icons"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/android/launcher2/LauncherModel;->sDbIconCache:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    iget-object v6, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-object v3, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-object v7, v3, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    move-object v3, v1

    check-cast v3, Lcom/android/launcher2/HomeShortcutItem;

    sget-object v4, Lcom/android/launcher2/LauncherModel;->sDbIconCache:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-virtual {v6, v7, v3, v4}, Lcom/android/launcher2/LauncherModel;->updateSavedIcon(Landroid/content/Context;Lcom/android/launcher2/HomeShortcutItem;[B)V

    goto :goto_1

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    :cond_1
    const-string v6, "LauncherExModel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Setting thread priority to "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v3, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mIsLaunching:Z

    if-eqz v3, :cond_7

    const-string v3, "DEFAULT"

    :goto_2
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-object v6, v3, Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_2
    sget-boolean v3, Lcom/android/launcher2/LauncherModel;->UseLauncherHighPriority:Z

    if-eqz v3, :cond_8

    const/4 v3, -0x2

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    :goto_3
    iget-object v3, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-boolean v3, v3, Lcom/android/launcher2/LauncherExModel;->mRefreshRequired:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    invoke-virtual {v3}, Lcom/android/launcher2/LauncherModel;->hasLocaleChangedLocked()Z

    move-result v3

    if-eqz v3, :cond_a

    :cond_2
    iget-object v3, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    invoke-virtual {v3}, Lcom/android/launcher2/LauncherModel;->setLocaleLocked()V

    iget-object v3, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/launcher2/LauncherExModel;->mRefreshRequired:Z

    iget-object v3, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    const/4 v4, 0x1

    # setter for: Lcom/android/launcher2/LauncherExModel;->mRefreshRequiredInSecretModeChange:Z
    invoke-static {v3, v4}, Lcom/android/launcher2/LauncherExModel;->access$502(Lcom/android/launcher2/LauncherExModel;Z)Z

    iget-object v3, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-object v3, v3, Lcom/android/launcher2/LauncherModel;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    invoke-virtual {v3}, Lcom/android/launcher2/PkgResCache;->clear()V

    :cond_3
    :goto_4
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    iget-boolean v3, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mIsModeChanged:Z

    if-eqz v3, :cond_4

    invoke-direct {p0}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->bindSecretPageModeChange()V

    :cond_4
    iget-boolean v3, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mIsFestivalModeChanged:Z

    if-eqz v3, :cond_5

    invoke-direct {p0}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->bindFestivalPageModeChange()V

    :cond_5
    const-string v3, "LauncherExModel"

    const-string v4, "step 1: loading workspace"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->loadAndBindWorkspace()V

    iget-boolean v3, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mStopped:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mIsLaunching:Z

    if-eqz v3, :cond_6

    const-string v3, "LauncherExModel"

    const-string v4, "Setting thread priority to BACKGROUND"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-object v4, v3, Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_3
    sget-boolean v3, Lcom/android/launcher2/LauncherModel;->UseLauncherHighPriority:Z

    if-eqz v3, :cond_b

    const/4 v3, -0x2

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    :goto_5
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :cond_6
    invoke-direct {p0}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->waitForIdle()V

    const-string v3, "LauncherExModel"

    const-string v4, "step 2: loading all apps"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->loadAndBindAllApps()V

    iget-object v3, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-object v4, v3, Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v4

    const/4 v3, 0x0

    :try_start_4
    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    monitor-exit v4

    goto/16 :goto_0

    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v3

    :cond_7
    const-string v3, "BACKGROUND"

    goto/16 :goto_2

    :cond_8
    :try_start_5
    iget-boolean v3, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mIsLaunching:Z

    if-eqz v3, :cond_9

    move v3, v5

    :goto_6
    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    goto/16 :goto_3

    :catchall_2
    move-exception v3

    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v3

    :cond_9
    move v3, v4

    goto :goto_6

    :cond_a
    :try_start_6
    iget-object v3, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-boolean v3, v3, Lcom/android/launcher2/LauncherExModel;->mAllAppsLoaded:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-boolean v3, v3, Lcom/android/launcher2/LauncherExModel;->mRefreshRequired:Z

    if-nez v3, :cond_3

    invoke-direct {p0}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->postModelRefreshed()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_4

    :cond_b
    const/16 v3, 0xa

    :try_start_7
    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    goto :goto_5

    :catchall_3
    move-exception v3

    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v3

    :cond_c
    sget-object v3, Lcom/android/launcher2/LauncherModel;->sDbIconCache:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    iget-object v3, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iput-boolean v5, v3, Lcom/android/launcher2/LauncherExModel;->mRefreshRequired:Z

    iget-object v3, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-object v4, v3, Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_8
    iget-object v3, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    # getter for: Lcom/android/launcher2/LauncherExModel;->mLoaderTask:Lcom/android/launcher2/LauncherExModel$LoaderTask;
    invoke-static {v3}, Lcom/android/launcher2/LauncherExModel;->access$000(Lcom/android/launcher2/LauncherExModel;)Lcom/android/launcher2/LauncherExModel$LoaderTask;

    move-result-object v3

    if-ne v3, p0, :cond_d

    iget-object v3, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    const/4 v5, 0x0

    # setter for: Lcom/android/launcher2/LauncherExModel;->mLoaderTask:Lcom/android/launcher2/LauncherExModel$LoaderTask;
    invoke-static {v3, v5}, Lcom/android/launcher2/LauncherExModel;->access$002(Lcom/android/launcher2/LauncherExModel;Lcom/android/launcher2/LauncherExModel$LoaderTask;)Lcom/android/launcher2/LauncherExModel$LoaderTask;

    :cond_d
    iget-object v3, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    const/4 v5, 0x0

    # setter for: Lcom/android/launcher2/LauncherExModel;->mIsLoaderTaskRunning:Z
    invoke-static {v3, v5}, Lcom/android/launcher2/LauncherExModel;->access$402(Lcom/android/launcher2/LauncherExModel;Z)Z

    monitor-exit v4

    return-void

    :catchall_4
    move-exception v3

    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v3
.end method

.method public stopLocked()V
    .locals 3

    const-string v0, "LauncherExModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stopping LoaderTask: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mStopped:Z

    iget-object v0, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppLoader;->abortLoader()V

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
