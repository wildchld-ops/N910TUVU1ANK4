.class Lcom/samsung/android/toolbox/TwToolBoxViewer$4;
.super Landroid/database/ContentObserver;
.source "TwToolBoxViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/toolbox/TwToolBoxViewer;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/toolbox/TwToolBoxViewer;


# direct methods
.method constructor <init>(Lcom/samsung/android/toolbox/TwToolBoxViewer;Landroid/os/Handler;)V
    .locals 0
    .param p2    # Landroid/os/Handler;

    iput-object p1, p0, Lcom/samsung/android/toolbox/TwToolBoxViewer$4;->this$0:Lcom/samsung/android/toolbox/TwToolBoxViewer;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1    # Z

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxViewer$4;->this$0:Lcom/samsung/android/toolbox/TwToolBoxViewer;

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxViewer$4;->this$0:Lcom/samsung/android/toolbox/TwToolBoxViewer;

    iget-object v1, v1, Lcom/samsung/android/toolbox/TwToolBoxViewer;->mManager:Lcom/samsung/android/toolbox/TwToolBoxManager;

    invoke-virtual {v1}, Lcom/samsung/android/toolbox/TwToolBoxManager;->getToolList()[Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/samsung/android/toolbox/TwToolBoxViewer;->createPackageList([Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/samsung/android/toolbox/TwToolBoxViewer;->access$100(Lcom/samsung/android/toolbox/TwToolBoxViewer;[Ljava/lang/String;)V

    return-void
.end method
