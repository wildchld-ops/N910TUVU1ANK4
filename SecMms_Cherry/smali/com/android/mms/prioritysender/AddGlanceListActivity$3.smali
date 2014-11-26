.class Lcom/android/mms/prioritysender/AddGlanceListActivity$3;
.super Ljava/lang/Object;
.source "AddGlanceListActivity.java"

# interfaces
.implements Lcom/android/mms/prioritysender/AddGlanceListAdapter$OnContentChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/prioritysender/AddGlanceListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/prioritysender/AddGlanceListActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/prioritysender/AddGlanceListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/prioritysender/AddGlanceListActivity$3;->this$0:Lcom/android/mms/prioritysender/AddGlanceListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentChanged(Lcom/android/mms/prioritysender/AddGlanceListAdapter;)V
    .locals 2
    .param p1    # Lcom/android/mms/prioritysender/AddGlanceListAdapter;

    const-string v0, "Mms/AddGlanceListActivity"

    const-string v1, "onContentChanged"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/prioritysender/AddGlanceListActivity$3;->this$0:Lcom/android/mms/prioritysender/AddGlanceListActivity;

    # invokes: Lcom/android/mms/prioritysender/AddGlanceListActivity;->startQuery()V
    invoke-static {v0}, Lcom/android/mms/prioritysender/AddGlanceListActivity;->access$100(Lcom/android/mms/prioritysender/AddGlanceListActivity;)V

    return-void
.end method
