.class Lcom/android/mms/ui/FileHistoryListActivity$2;
.super Ljava/lang/Object;
.source "FileHistoryListActivity.java"

# interfaces
.implements Lcom/android/mms/ui/FileHistoryListAdapter$OnContentChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/FileHistoryListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/FileHistoryListActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/FileHistoryListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/FileHistoryListActivity$2;->this$0:Lcom/android/mms/ui/FileHistoryListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentChanged(Lcom/android/mms/ui/FileHistoryListAdapter;)V
    .locals 2
    .param p1    # Lcom/android/mms/ui/FileHistoryListAdapter;

    const-string v0, "Mms/FileHistoryListActivity"

    const-string v1, "onContentChanged()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/FileHistoryListActivity$2;->this$0:Lcom/android/mms/ui/FileHistoryListActivity;

    # invokes: Lcom/android/mms/ui/FileHistoryListActivity;->startAsyncQuery()V
    invoke-static {v0}, Lcom/android/mms/ui/FileHistoryListActivity;->access$100(Lcom/android/mms/ui/FileHistoryListActivity;)V

    return-void
.end method
