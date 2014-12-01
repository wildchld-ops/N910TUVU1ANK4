.class Lcom/android/mms/ui/DraftMessageManager$8;
.super Ljava/lang/Object;
.source "DraftMessageManager.java"

# interfaces
.implements Lcom/android/mms/ui/DraftMessageListAdapter$OnContentChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/DraftMessageManager;
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

    iput-object p1, p0, Lcom/android/mms/ui/DraftMessageManager$8;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentChanged(Lcom/android/mms/ui/DraftMessageListAdapter;)V
    .locals 2

    const-string v0, "Mms/DraftMessageManager"

    const-string v1, "onContentChanged()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager$8;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    # invokes: Lcom/android/mms/ui/DraftMessageManager;->startAsyncQuery()V
    invoke-static {v0}, Lcom/android/mms/ui/DraftMessageManager;->access$600(Lcom/android/mms/ui/DraftMessageManager;)V

    return-void
.end method
