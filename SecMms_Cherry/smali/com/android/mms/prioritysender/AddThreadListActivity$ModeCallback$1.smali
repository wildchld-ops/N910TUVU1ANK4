.class Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback$1;
.super Ljava/lang/Object;
.source "AddThreadListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;


# direct methods
.method constructor <init>(Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback$1;->this$1:Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback$1;->this$1:Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;

    iget-object v0, v0, Lcom/android/mms/prioritysender/AddThreadListActivity$ModeCallback;->this$0:Lcom/android/mms/prioritysender/AddThreadListActivity;

    invoke-virtual {v0}, Lcom/android/mms/prioritysender/AddThreadListActivity;->finish()V

    return-void
.end method
