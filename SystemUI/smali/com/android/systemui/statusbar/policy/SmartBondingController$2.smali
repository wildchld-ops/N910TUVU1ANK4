.class Lcom/android/systemui/statusbar/policy/SmartBondingController$2;
.super Ljava/lang/Object;
.source "SmartBondingController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/SmartBondingController;->createSmartBondingUsageAlert()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/SmartBondingController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/SmartBondingController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController$2;->this$0:Lcom/android/systemui/statusbar/policy/SmartBondingController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController$2;->this$0:Lcom/android/systemui/statusbar/policy/SmartBondingController;

    # getter for: Lcom/android/systemui/statusbar/policy/SmartBondingController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/SmartBondingController;->access$200(Lcom/android/systemui/statusbar/policy/SmartBondingController;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController$2;->this$0:Lcom/android/systemui/statusbar/policy/SmartBondingController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController$2;->this$0:Lcom/android/systemui/statusbar/policy/SmartBondingController;

    # getter for: Lcom/android/systemui/statusbar/policy/SmartBondingController;->mThreadID:J
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/SmartBondingController;->access$300(Lcom/android/systemui/statusbar/policy/SmartBondingController;)J

    move-result-wide v1

    # invokes: Lcom/android/systemui/statusbar/policy/SmartBondingController;->setSBUsageStatus(IJ)V
    invoke-static {v0, v3, v1, v2}, Lcom/android/systemui/statusbar/policy/SmartBondingController;->access$400(Lcom/android/systemui/statusbar/policy/SmartBondingController;IJ)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController$2;->this$0:Lcom/android/systemui/statusbar/policy/SmartBondingController;

    # setter for: Lcom/android/systemui/statusbar/policy/SmartBondingController;->mIsSelected:Z
    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/policy/SmartBondingController;->access$502(Lcom/android/systemui/statusbar/policy/SmartBondingController;Z)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SmartBondingController$2;->this$0:Lcom/android/systemui/statusbar/policy/SmartBondingController;

    const/4 v1, 0x0

    # setter for: Lcom/android/systemui/statusbar/policy/SmartBondingController;->mDialog:Landroid/app/Dialog;
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/SmartBondingController;->access$602(Lcom/android/systemui/statusbar/policy/SmartBondingController;Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method
