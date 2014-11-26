.class Lcom/android/mms/ui/SpamMessageManager$6;
.super Ljava/lang/Object;
.source "SpamMessageManager.java"

# interfaces
.implements Lcom/android/mms/ui/SpamMessageListAdapter$OnContentChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SpamMessageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SpamMessageManager;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SpamMessageManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/SpamMessageManager$6;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentChanged(Lcom/android/mms/ui/SpamMessageListAdapter;)V
    .locals 3
    .param p1    # Lcom/android/mms/ui/SpamMessageListAdapter;

    const-string v0, "Mms/SpamMessageManager"

    const-string v1, "onContentChanged()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/SpamMessageManager$6;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    const-wide/16 v1, 0xc8

    # invokes: Lcom/android/mms/ui/SpamMessageManager;->startAsyncQueryDelayed(J)V
    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/SpamMessageManager;->access$500(Lcom/android/mms/ui/SpamMessageManager;J)V

    return-void
.end method
