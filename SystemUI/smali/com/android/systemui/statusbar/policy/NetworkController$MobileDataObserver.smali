.class Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataObserver;
.super Landroid/database/ContentObserver;
.source "NetworkController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetworkController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MobileDataObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/NetworkController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/NetworkController;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataObserver;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataObserver;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataObserver;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkController;->isMobileDataEnabled()Z
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$2700(Lcom/android/systemui/statusbar/policy/NetworkController;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileDataEnabled:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataObserver;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkController;->getUpdateDataNetType()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$600(Lcom/android/systemui/statusbar/policy/NetworkController;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataObserver;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    # invokes: Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataIcon()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$700(Lcom/android/systemui/statusbar/policy/NetworkController;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataObserver;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    return-void
.end method
