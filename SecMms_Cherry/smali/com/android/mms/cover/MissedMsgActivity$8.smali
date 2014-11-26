.class Lcom/android/mms/cover/MissedMsgActivity$8;
.super Ljava/lang/Object;
.source "MissedMsgActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/cover/MissedMsgActivity;->moveToNextMessage(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/cover/MissedMsgActivity;

.field final synthetic val$currentIdx:I

.field final synthetic val$forward:Z


# direct methods
.method constructor <init>(Lcom/android/mms/cover/MissedMsgActivity;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/cover/MissedMsgActivity$8;->this$0:Lcom/android/mms/cover/MissedMsgActivity;

    iput p2, p0, Lcom/android/mms/cover/MissedMsgActivity$8;->val$currentIdx:I

    iput-boolean p3, p0, Lcom/android/mms/cover/MissedMsgActivity$8;->val$forward:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity$8;->this$0:Lcom/android/mms/cover/MissedMsgActivity;

    iget v1, p0, Lcom/android/mms/cover/MissedMsgActivity$8;->val$currentIdx:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/android/mms/cover/MissedMsgActivity$8;->val$forward:Z

    # invokes: Lcom/android/mms/cover/MissedMsgActivity;->setMissedMsgInfo(IZZ)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/cover/MissedMsgActivity;->access$1300(Lcom/android/mms/cover/MissedMsgActivity;IZZ)V

    return-void
.end method
