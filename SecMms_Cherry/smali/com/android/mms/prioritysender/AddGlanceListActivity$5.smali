.class Lcom/android/mms/prioritysender/AddGlanceListActivity$5;
.super Ljava/lang/Object;
.source "AddGlanceListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/prioritysender/AddGlanceListActivity;->onUpdate(Lcom/android/mms/data/Contact;)V
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

    iput-object p1, p0, Lcom/android/mms/prioritysender/AddGlanceListActivity$5;->this$0:Lcom/android/mms/prioritysender/AddGlanceListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "Mms/AddGlanceListActivity"

    const-string v1, "onUpdate notifyDataSetChanged"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/prioritysender/AddGlanceListActivity$5;->this$0:Lcom/android/mms/prioritysender/AddGlanceListActivity;

    # getter for: Lcom/android/mms/prioritysender/AddGlanceListActivity;->mListAdapter:Lcom/android/mms/prioritysender/AddGlanceListAdapter;
    invoke-static {v0}, Lcom/android/mms/prioritysender/AddGlanceListActivity;->access$300(Lcom/android/mms/prioritysender/AddGlanceListActivity;)Lcom/android/mms/prioritysender/AddGlanceListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
