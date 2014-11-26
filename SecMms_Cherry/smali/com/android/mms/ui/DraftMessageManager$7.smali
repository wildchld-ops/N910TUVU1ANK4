.class Lcom/android/mms/ui/DraftMessageManager$7;
.super Ljava/lang/Object;
.source "DraftMessageManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/DraftMessageManager;->startAsyncQueryDelayed(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/DraftMessageManager;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/DraftMessageManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/DraftMessageManager$7;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager$7;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    const/4 v1, 0x0

    # invokes: Lcom/android/mms/ui/DraftMessageManager;->startAsyncQueryInternal(Z)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/DraftMessageManager;->access$500(Lcom/android/mms/ui/DraftMessageManager;Z)V

    return-void
.end method
