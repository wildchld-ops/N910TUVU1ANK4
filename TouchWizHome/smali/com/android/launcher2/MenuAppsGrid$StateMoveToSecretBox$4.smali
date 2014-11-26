.class Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox$4;
.super Ljava/lang/Object;
.source "MenuAppsGrid.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;->moveToSecretBox()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;

.field final synthetic val$list:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox$4;->this$1:Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;

    iput-object p2, p0, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox$4;->val$list:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox$4;->this$1:Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;

    iget-object v0, v0, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mTabHost:Lcom/android/launcher2/MenuView;
    invoke-static {v0}, Lcom/android/launcher2/MenuAppsGrid;->access$100(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox$4;->val$list:Ljava/util/List;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/MenuView;->setSecretAvailableWidgets(Ljava/util/List;Z)V

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox$4;->this$1:Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;

    iget-object v0, v0, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mTabHost:Lcom/android/launcher2/MenuView;
    invoke-static {v0}, Lcom/android/launcher2/MenuAppsGrid;->access$100(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/MenuView;->setSecretWidgetByFiltering()V

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox$4;->this$1:Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;

    iget-object v0, v0, Lcom/android/launcher2/MenuAppsGrid$StateMoveToSecretBox;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    # getter for: Lcom/android/launcher2/MenuAppsGrid;->mTabHost:Lcom/android/launcher2/MenuView;
    invoke-static {v0}, Lcom/android/launcher2/MenuAppsGrid;->access$100(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/MenuView;->setDownloadIconEnabled()V

    return-void
.end method
