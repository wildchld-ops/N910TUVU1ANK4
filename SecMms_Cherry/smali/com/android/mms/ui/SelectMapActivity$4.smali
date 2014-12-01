.class Lcom/android/mms/ui/SelectMapActivity$4;
.super Ljava/lang/Object;
.source "SelectMapActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SelectMapActivity;->updateActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SelectMapActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SelectMapActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/SelectMapActivity$4;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v1, p0, Lcom/android/mms/ui/SelectMapActivity$4;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    # getter for: Lcom/android/mms/ui/SelectMapActivity;->mPickImage:Z
    invoke-static {v1}, Lcom/android/mms/ui/SelectMapActivity;->access$1200(Lcom/android/mms/ui/SelectMapActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/mms/ui/SelectMapActivity$createCaputreMap;

    iget-object v2, p0, Lcom/android/mms/ui/SelectMapActivity$4;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/mms/ui/SelectMapActivity$createCaputreMap;-><init>(Lcom/android/mms/ui/SelectMapActivity;Lcom/android/mms/ui/SelectMapActivity$1;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/SelectMapActivity$createCaputreMap;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iget-object v1, p0, Lcom/android/mms/ui/SelectMapActivity$4;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    # getter for: Lcom/android/mms/ui/SelectMapActivity;->mSearchPoint:Lcom/google/android/maps/GeoPoint;
    invoke-static {v1}, Lcom/android/mms/ui/SelectMapActivity;->access$300(Lcom/android/mms/ui/SelectMapActivity;)Lcom/google/android/maps/GeoPoint;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/SelectMapActivity$4;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    iget-object v2, p0, Lcom/android/mms/ui/SelectMapActivity$4;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    # getter for: Lcom/android/mms/ui/SelectMapActivity;->mSearchPoint:Lcom/google/android/maps/GeoPoint;
    invoke-static {v2}, Lcom/android/mms/ui/SelectMapActivity;->access$300(Lcom/android/mms/ui/SelectMapActivity;)Lcom/google/android/maps/GeoPoint;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/SelectMapActivity;->getAddressAndURL(Lcom/google/android/maps/GeoPoint;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/SelectMapActivity$4;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/SelectMapActivity;->doFinish(Ljava/lang/String;)V

    goto :goto_0
.end method
