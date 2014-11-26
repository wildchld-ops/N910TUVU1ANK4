.class Lcom/android/mms/prioritysender/AddGlanceListActivity$4;
.super Ljava/lang/Object;
.source "AddGlanceListActivity.java"

# interfaces
.implements Lcom/android/mms/prioritysender/AddGlanceListAdapter$OnAddClickListener;


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

    iput-object p1, p0, Lcom/android/mms/prioritysender/AddGlanceListActivity$4;->this$0:Lcom/android/mms/prioritysender/AddGlanceListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    iget-object v0, p0, Lcom/android/mms/prioritysender/AddGlanceListActivity$4;->this$0:Lcom/android/mms/prioritysender/AddGlanceListActivity;

    invoke-static {v0}, Lcom/android/mms/glance/GlanceUtils;->getPrioritySenderCount(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x19

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/mms/prioritysender/AddGlanceListActivity$4;->this$0:Lcom/android/mms/prioritysender/AddGlanceListActivity;

    # invokes: Lcom/android/mms/prioritysender/AddGlanceListActivity;->showMaxToast()V
    invoke-static {v0}, Lcom/android/mms/prioritysender/AddGlanceListActivity;->access$000(Lcom/android/mms/prioritysender/AddGlanceListActivity;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/prioritysender/AddGlanceListActivity$4;->this$0:Lcom/android/mms/prioritysender/AddGlanceListActivity;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-static {v0, p1, v1, v2, v3}, Lcom/android/mms/glance/GlanceUtils;->addPrioritySender(Landroid/content/Context;Ljava/lang/String;JZ)V

    iget-object v0, p0, Lcom/android/mms/prioritysender/AddGlanceListActivity$4;->this$0:Lcom/android/mms/prioritysender/AddGlanceListActivity;

    # invokes: Lcom/android/mms/prioritysender/AddGlanceListActivity;->showAddedToast(Ljava/lang/String;)V
    invoke-static {v0, p2}, Lcom/android/mms/prioritysender/AddGlanceListActivity;->access$200(Lcom/android/mms/prioritysender/AddGlanceListActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/prioritysender/AddGlanceListActivity$4;->this$0:Lcom/android/mms/prioritysender/AddGlanceListActivity;

    invoke-static {v0}, Lcom/android/mms/prioritysender/PrioritySenderCache;->getInstance(Landroid/content/Context;)Lcom/android/mms/prioritysender/PrioritySenderCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/prioritysender/PrioritySenderCache;->fillCache()V

    iget-object v0, p0, Lcom/android/mms/prioritysender/AddGlanceListActivity$4;->this$0:Lcom/android/mms/prioritysender/AddGlanceListActivity;

    # invokes: Lcom/android/mms/prioritysender/AddGlanceListActivity;->startQuery()V
    invoke-static {v0}, Lcom/android/mms/prioritysender/AddGlanceListActivity;->access$100(Lcom/android/mms/prioritysender/AddGlanceListActivity;)V

    iget-object v0, p0, Lcom/android/mms/prioritysender/AddGlanceListActivity$4;->this$0:Lcom/android/mms/prioritysender/AddGlanceListActivity;

    invoke-static {v0}, Lcom/android/mms/widget/MmsWidgetProvider;->notifyDatasetChanged(Landroid/content/Context;)V

    goto :goto_0
.end method
