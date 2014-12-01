.class Lcom/android/settings/myplace/MyPlaceListDelelete$1;
.super Ljava/lang/Object;
.source "MyPlaceListDelelete.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/myplace/MyPlaceListDelelete;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/myplace/MyPlaceListDelelete;


# direct methods
.method constructor <init>(Lcom/android/settings/myplace/MyPlaceListDelelete;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$1;->this$0:Lcom/android/settings/myplace/MyPlaceListDelelete;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$1;->this$0:Lcom/android/settings/myplace/MyPlaceListDelelete;

    invoke-virtual {v0}, Lcom/android/settings/myplace/MyPlaceListDelelete;->customlistdelete()V

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceListDelelete$1;->this$0:Lcom/android/settings/myplace/MyPlaceListDelelete;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method
