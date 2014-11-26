.class public Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ProgressBarThread;
.super Ljava/lang/Thread;
.source "ACDownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/framework/acmanager/ACDownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProgressBarThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;


# direct methods
.method public constructor <init>(Lcom/diotek/ime/framework/acmanager/ACDownloadManager;)V
    .locals 0

    iput-object p1, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$ProgressBarThread;->this$0:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method
