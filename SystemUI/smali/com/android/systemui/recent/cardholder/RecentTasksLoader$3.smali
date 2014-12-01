.class Lcom/android/systemui/recent/cardholder/RecentTasksLoader$3;
.super Landroid/os/AsyncTask;
.source "RecentTasksLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->loadTasksInBackground(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/systemui/recent/cardholder/TaskDescription;",
        ">;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/cardholder/RecentTasksLoader;

.field final synthetic val$numTasks:I

.field final synthetic val$recentTasks:Ljava/util/List;

.field final synthetic val$taskDescriptions:Ljava/util/ArrayList;

.field final synthetic val$tasksWaitingForThumbnails:Ljava/util/concurrent/LinkedBlockingQueue;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/cardholder/RecentTasksLoader;ILjava/util/List;Ljava/util/concurrent/LinkedBlockingQueue;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader$3;->this$0:Lcom/android/systemui/recent/cardholder/RecentTasksLoader;

    iput p2, p0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader$3;->val$numTasks:I

    iput-object p3, p0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader$3;->val$recentTasks:Ljava/util/List;

    iput-object p4, p0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader$3;->val$tasksWaitingForThumbnails:Ljava/util/concurrent/LinkedBlockingQueue;

    iput-object p5, p0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader$3;->val$taskDescriptions:Ljava/util/ArrayList;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/systemui/recent/cardholder/RecentTasksLoader$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader$3;->this$0:Lcom/android/systemui/recent/cardholder/RecentTasksLoader;

    # getter for: Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->access$500(Lcom/android/systemui/recent/cardholder/RecentTasksLoader;)Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader$3;->this$0:Lcom/android/systemui/recent/cardholder/RecentTasksLoader;

    # getter for: Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->access$500(Lcom/android/systemui/recent/cardholder/RecentTasksLoader;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager;

    const/16 v1, 0xa

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader$3;->this$0:Lcom/android/systemui/recent/cardholder/RecentTasksLoader;

    # getter for: Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->access$500(Lcom/android/systemui/recent/cardholder/RecentTasksLoader;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v11

    const/4 v10, 0x1

    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader$3;->val$numTasks:I

    if-ge v12, v1, :cond_1

    const/16 v1, 0x15

    if-ge v13, v1, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/ArrayList;

    const/4 v2, 0x0

    aput-object v19, v1, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    if-eqz v10, :cond_2

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/ArrayList;

    const/4 v2, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    aput-object v3, v1, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    :cond_2
    :goto_2
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader$3;->val$tasksWaitingForThumbnails:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v2, Lcom/android/systemui/recent/cardholder/TaskDescription;

    invoke-direct {v2}, Lcom/android/systemui/recent/cardholder/TaskDescription;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static/range {v16 .. v16}, Landroid/os/Process;->setThreadPriority(I)V

    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader$3;->val$recentTasks:Ljava/util/List;

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/app/ActivityManager$RecentTaskInfo;

    new-instance v14, Landroid/content/Intent;

    move-object/from16 v0, v18

    iget-object v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-direct {v14, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object/from16 v0, v18

    iget-object v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    if-eqz v1, :cond_4

    move-object/from16 v0, v18

    iget-object v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v14, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader$3;->this$0:Lcom/android/systemui/recent/cardholder/RecentTasksLoader;

    invoke-virtual {v14}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    # invokes: Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->isCurrentHomeActivity(Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;)Z
    invoke-static {v1, v2, v11}, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->access$600(Lcom/android/systemui/recent/cardholder/RecentTasksLoader;Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {v14}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader$3;->this$0:Lcom/android/systemui/recent/cardholder/RecentTasksLoader;

    # getter for: Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->access$500(Lcom/android/systemui/recent/cardholder/RecentTasksLoader;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v14}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.samsung.android.app.cocktailbarservice"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader$3;->this$0:Lcom/android/systemui/recent/cardholder/RecentTasksLoader;

    # getter for: Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->access$500(Lcom/android/systemui/recent/cardholder/RecentTasksLoader;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/recent/cardholder/RecentsPanelView;->isEnableEmergencyMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader$3;->this$0:Lcom/android/systemui/recent/cardholder/RecentTasksLoader;

    move-object/from16 v0, v18

    iget v2, v0, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    move-object/from16 v0, v18

    iget v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    move-object/from16 v0, v18

    iget-object v5, v0, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    move-object/from16 v0, v18

    iget-object v6, v0, Landroid/app/ActivityManager$RecentTaskInfo;->description:Ljava/lang/CharSequence;

    move-object/from16 v0, v18

    iget-object v7, v0, Landroid/app/ActivityManager$RecentTaskInfo;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->createTaskDescription(IILandroid/content/Intent;Landroid/content/ComponentName;Ljava/lang/CharSequence;Lcom/samsung/android/multiwindow/MultiWindowStyle;)Lcom/android/systemui/recent/cardholder/TaskDescription;

    move-result-object v15

    if-eqz v15, :cond_5

    :goto_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader$3;->val$tasksWaitingForThumbnails:Ljava/util/concurrent/LinkedBlockingQueue;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader$3;->val$taskDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v10, :cond_8

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader$3;->this$0:Lcom/android/systemui/recent/cardholder/RecentTasksLoader;

    # getter for: Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->mNumTasksInFirstScreenful:I
    invoke-static {v2}, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->access$700(Lcom/android/systemui/recent/cardholder/RecentTasksLoader;)I

    move-result v2

    if-ne v1, v2, :cond_8

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/ArrayList;

    const/4 v2, 0x0

    aput-object v19, v1, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x0

    :cond_8
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_3

    :catch_0
    move-exception v1

    goto/16 :goto_2

    :catch_1
    move-exception v1

    goto :goto_4
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/systemui/recent/cardholder/RecentTasksLoader$3;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader$3;->this$0:Lcom/android/systemui/recent/cardholder/RecentTasksLoader;

    # getter for: Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->mRecentsPanel:Lcom/android/systemui/recent/cardholder/RecentsPanelView;
    invoke-static {v0}, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->access$400(Lcom/android/systemui/recent/cardholder/RecentTasksLoader;)Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    move-result-object v0

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/android/systemui/recent/cardholder/RecentTasksLoader$3;->onProgressUpdate([Ljava/util/ArrayList;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recent/cardholder/TaskDescription;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    aget-object v0, p1, v1

    iget-object v1, p0, Lcom/android/systemui/recent/cardholder/RecentTasksLoader$3;->this$0:Lcom/android/systemui/recent/cardholder/RecentTasksLoader;

    # getter for: Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->mRecentsPanel:Lcom/android/systemui/recent/cardholder/RecentsPanelView;
    invoke-static {v1}, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->access$400(Lcom/android/systemui/recent/cardholder/RecentTasksLoader;)Lcom/android/systemui/recent/cardholder/RecentsPanelView;

    move-result-object v1

    if-eqz v1, :cond_0

    :cond_0
    return-void
.end method
