.class Lcom/android/settings/myplace/SelectMapActivity$7;
.super Ljava/lang/Object;
.source "SelectMapActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/myplace/SelectMapActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/myplace/SelectMapActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/myplace/SelectMapActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/myplace/SelectMapActivity$7;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity$7;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    # getter for: Lcom/android/settings/myplace/SelectMapActivity;->mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;
    invoke-static {v0}, Lcom/android/settings/myplace/SelectMapActivity;->access$600(Lcom/android/settings/myplace/SelectMapActivity;)Lcom/google/android/maps/MyLocationOverlay;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity$7;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    # getter for: Lcom/android/settings/myplace/SelectMapActivity;->mMyLocationOverlay:Lcom/google/android/maps/MyLocationOverlay;
    invoke-static {v0}, Lcom/android/settings/myplace/SelectMapActivity;->access$600(Lcom/android/settings/myplace/SelectMapActivity;)Lcom/google/android/maps/MyLocationOverlay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/MyLocationOverlay;->disableMyLocation()V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/myplace/SelectMapActivity$7;->this$0:Lcom/android/settings/myplace/SelectMapActivity;

    # invokes: Lcom/android/settings/myplace/SelectMapActivity;->searchLocation()V
    invoke-static {v0}, Lcom/android/settings/myplace/SelectMapActivity;->access$100(Lcom/android/settings/myplace/SelectMapActivity;)V

    return-void
.end method
