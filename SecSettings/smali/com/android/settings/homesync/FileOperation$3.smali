.class Lcom/android/settings/homesync/FileOperation$3;
.super Ljava/lang/Object;
.source "FileOperation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/homesync/FileOperation;->publish(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/homesync/FileOperation;

.field final synthetic val$currentSize:J

.field final synthetic val$fileName:Ljava/lang/String;

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$notification:Z

.field final synthetic val$perFilePercentage:I

.field final synthetic val$t:Ljava/lang/String;

.field final synthetic val$totalPercentage:I

.field final synthetic val$totalSize:J


# direct methods
.method constructor <init>(Lcom/android/settings/homesync/FileOperation;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZI)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/homesync/FileOperation$3;->this$0:Lcom/android/settings/homesync/FileOperation;

    iput p2, p0, Lcom/android/settings/homesync/FileOperation$3;->val$perFilePercentage:I

    iput-object p3, p0, Lcom/android/settings/homesync/FileOperation$3;->val$t:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/settings/homesync/FileOperation$3;->val$message:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/settings/homesync/FileOperation$3;->val$fileName:Ljava/lang/String;

    iput-wide p6, p0, Lcom/android/settings/homesync/FileOperation$3;->val$currentSize:J

    iput-wide p8, p0, Lcom/android/settings/homesync/FileOperation$3;->val$totalSize:J

    iput-boolean p10, p0, Lcom/android/settings/homesync/FileOperation$3;->val$notification:Z

    iput p11, p0, Lcom/android/settings/homesync/FileOperation$3;->val$totalPercentage:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget v0, p0, Lcom/android/settings/homesync/FileOperation$3;->val$perFilePercentage:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/homesync/FileOperation$3;->this$0:Lcom/android/settings/homesync/FileOperation;

    iget-object v1, p0, Lcom/android/settings/homesync/FileOperation$3;->val$t:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/homesync/FileOperation$3;->val$message:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/homesync/FileOperation$3;->val$fileName:Ljava/lang/String;

    iget-wide v4, p0, Lcom/android/settings/homesync/FileOperation$3;->val$currentSize:J

    iget-wide v6, p0, Lcom/android/settings/homesync/FileOperation$3;->val$totalSize:J

    # invokes: Lcom/android/settings/homesync/FileOperation;->process(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V
    invoke-static/range {v0 .. v7}, Lcom/android/settings/homesync/FileOperation;->access$500(Lcom/android/settings/homesync/FileOperation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/homesync/FileOperation$3;->val$notification:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/homesync/FileOperation$3;->this$0:Lcom/android/settings/homesync/FileOperation;

    const/16 v1, 0x64

    iget v2, p0, Lcom/android/settings/homesync/FileOperation$3;->val$totalPercentage:I

    iget-wide v3, p0, Lcom/android/settings/homesync/FileOperation$3;->val$currentSize:J

    iget-wide v5, p0, Lcom/android/settings/homesync/FileOperation$3;->val$totalSize:J

    # invokes: Lcom/android/settings/homesync/FileOperation;->updateNotification(IIJJ)V
    invoke-static/range {v0 .. v6}, Lcom/android/settings/homesync/FileOperation;->access$600(Lcom/android/settings/homesync/FileOperation;IIJJ)V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/homesync/FileOperation$3;->this$0:Lcom/android/settings/homesync/FileOperation;

    iget-wide v1, p0, Lcom/android/settings/homesync/FileOperation$3;->val$currentSize:J

    iget-wide v3, p0, Lcom/android/settings/homesync/FileOperation$3;->val$totalSize:J

    iget v5, p0, Lcom/android/settings/homesync/FileOperation$3;->val$perFilePercentage:I

    iget v6, p0, Lcom/android/settings/homesync/FileOperation$3;->val$totalPercentage:I

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/homesync/FileOperation;->setProgress(JJII)V

    goto :goto_0
.end method
