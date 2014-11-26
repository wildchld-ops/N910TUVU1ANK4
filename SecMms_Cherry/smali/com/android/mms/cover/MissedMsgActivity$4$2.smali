.class Lcom/android/mms/cover/MissedMsgActivity$4$2;
.super Ljava/lang/Object;
.source "MissedMsgActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/cover/MissedMsgActivity$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/cover/MissedMsgActivity$4;


# direct methods
.method constructor <init>(Lcom/android/mms/cover/MissedMsgActivity$4;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/cover/MissedMsgActivity$4$2;->this$1:Lcom/android/mms/cover/MissedMsgActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity$4$2;->this$1:Lcom/android/mms/cover/MissedMsgActivity$4;

    iget-object v0, v0, Lcom/android/mms/cover/MissedMsgActivity$4;->this$0:Lcom/android/mms/cover/MissedMsgActivity;

    # invokes: Lcom/android/mms/cover/MissedMsgActivity;->sendExitBroadCastToScover()V
    invoke-static {v0}, Lcom/android/mms/cover/MissedMsgActivity;->access$1000(Lcom/android/mms/cover/MissedMsgActivity;)V

    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity$4$2;->this$1:Lcom/android/mms/cover/MissedMsgActivity$4;

    iget-object v0, v0, Lcom/android/mms/cover/MissedMsgActivity$4;->this$0:Lcom/android/mms/cover/MissedMsgActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
