.class Lcom/android/mms/prioritysender/AddGlanceListAdapter$1;
.super Ljava/lang/Object;
.source "AddGlanceListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/prioritysender/AddGlanceListAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/prioritysender/AddGlanceListAdapter;

.field final synthetic val$address:Ljava/lang/String;

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/mms/prioritysender/AddGlanceListAdapter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/prioritysender/AddGlanceListAdapter$1;->this$0:Lcom/android/mms/prioritysender/AddGlanceListAdapter;

    iput-object p2, p0, Lcom/android/mms/prioritysender/AddGlanceListAdapter$1;->val$address:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/mms/prioritysender/AddGlanceListAdapter$1;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/mms/prioritysender/AddGlanceListAdapter$1;->this$0:Lcom/android/mms/prioritysender/AddGlanceListAdapter;

    # getter for: Lcom/android/mms/prioritysender/AddGlanceListAdapter;->mOnAddClickListener:Lcom/android/mms/prioritysender/AddGlanceListAdapter$OnAddClickListener;
    invoke-static {v0}, Lcom/android/mms/prioritysender/AddGlanceListAdapter;->access$000(Lcom/android/mms/prioritysender/AddGlanceListAdapter;)Lcom/android/mms/prioritysender/AddGlanceListAdapter$OnAddClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/prioritysender/AddGlanceListAdapter$1;->this$0:Lcom/android/mms/prioritysender/AddGlanceListAdapter;

    # getter for: Lcom/android/mms/prioritysender/AddGlanceListAdapter;->mOnAddClickListener:Lcom/android/mms/prioritysender/AddGlanceListAdapter$OnAddClickListener;
    invoke-static {v0}, Lcom/android/mms/prioritysender/AddGlanceListAdapter;->access$000(Lcom/android/mms/prioritysender/AddGlanceListAdapter;)Lcom/android/mms/prioritysender/AddGlanceListAdapter$OnAddClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/prioritysender/AddGlanceListAdapter$1;->val$address:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/mms/prioritysender/AddGlanceListAdapter$1;->val$name:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/android/mms/prioritysender/AddGlanceListAdapter$OnAddClickListener;->onClick(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
