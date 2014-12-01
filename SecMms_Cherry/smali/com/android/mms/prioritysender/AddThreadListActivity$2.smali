.class Lcom/android/mms/prioritysender/AddThreadListActivity$2;
.super Ljava/lang/Object;
.source "AddThreadListActivity.java"

# interfaces
.implements Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/prioritysender/AddThreadListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/prioritysender/AddThreadListActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/prioritysender/AddThreadListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/prioritysender/AddThreadListActivity$2;->this$0:Lcom/android/mms/prioritysender/AddThreadListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentChanged(Lcom/android/mms/ui/ConversationListAdapter;)V
    .locals 2

    const-string v0, "Mms/AddThreadListActivity"

    const-string v1, "onContentChanged()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/prioritysender/AddThreadListActivity$2;->this$0:Lcom/android/mms/prioritysender/AddThreadListActivity;

    # invokes: Lcom/android/mms/prioritysender/AddThreadListActivity;->startAsyncQuery()V
    invoke-static {v0}, Lcom/android/mms/prioritysender/AddThreadListActivity;->access$700(Lcom/android/mms/prioritysender/AddThreadListActivity;)V

    return-void
.end method
