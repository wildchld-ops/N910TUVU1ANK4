.class Lcom/samsung/android/toolbox/TwToolBoxViewer$1$1;
.super Ljava/lang/Object;
.source "TwToolBoxViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/toolbox/TwToolBoxViewer$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/toolbox/TwToolBoxViewer$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/toolbox/TwToolBoxViewer$1;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/toolbox/TwToolBoxViewer$1$1;->this$1:Lcom/samsung/android/toolbox/TwToolBoxViewer$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxViewer$1$1;->this$1:Lcom/samsung/android/toolbox/TwToolBoxViewer$1;

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxViewer$1;->this$0:Lcom/samsung/android/toolbox/TwToolBoxViewer;

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxViewer$1$1;->this$1:Lcom/samsung/android/toolbox/TwToolBoxViewer$1;

    iget-object v1, v1, Lcom/samsung/android/toolbox/TwToolBoxViewer$1;->this$0:Lcom/samsung/android/toolbox/TwToolBoxViewer;

    iget-object v1, v1, Lcom/samsung/android/toolbox/TwToolBoxViewer;->mManager:Lcom/samsung/android/toolbox/TwToolBoxManager;

    invoke-virtual {v1}, Lcom/samsung/android/toolbox/TwToolBoxManager;->getToolList()[Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/samsung/android/toolbox/TwToolBoxViewer;->createPackageList([Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/samsung/android/toolbox/TwToolBoxViewer;->access$100(Lcom/samsung/android/toolbox/TwToolBoxViewer;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxViewer$1$1;->this$1:Lcom/samsung/android/toolbox/TwToolBoxViewer$1;

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxViewer$1;->this$0:Lcom/samsung/android/toolbox/TwToolBoxViewer;

    # invokes: Lcom/samsung/android/toolbox/TwToolBoxViewer;->updateVisibility()V
    invoke-static {v0}, Lcom/samsung/android/toolbox/TwToolBoxViewer;->access$200(Lcom/samsung/android/toolbox/TwToolBoxViewer;)V

    return-void
.end method
