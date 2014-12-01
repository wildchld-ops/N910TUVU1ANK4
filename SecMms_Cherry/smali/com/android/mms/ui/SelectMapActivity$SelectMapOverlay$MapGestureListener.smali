.class Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay$MapGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SelectMapActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MapGestureListener"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay$MapGestureListener;->this$1:Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 5

    iget-object v1, p0, Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay$MapGestureListener;->this$1:Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;

    iget-object v1, v1, Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    iget-object v1, v1, Lcom/android/mms/ui/SelectMapActivity;->mMapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v1}, Lcom/google/android/maps/MapView;->getProjection()Lcom/google/android/maps/Projection;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-interface {v1, v2, v3}, Lcom/google/android/maps/Projection;->fromPixels(II)Lcom/google/android/maps/GeoPoint;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay$MapGestureListener;->this$1:Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;

    # getter for: Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;->mOverlays:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;->access$2300(Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay$MapGestureListener;->this$1:Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;

    iget-object v1, v1, Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    invoke-virtual {v0}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v2

    invoke-virtual {v0}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v3

    const-string v4, "here"

    # invokes: Lcom/android/mms/ui/SelectMapActivity;->addMarker(IILjava/lang/String;)Z
    invoke-static {v1, v2, v3, v4}, Lcom/android/mms/ui/SelectMapActivity;->access$1900(Lcom/android/mms/ui/SelectMapActivity;IILjava/lang/String;)Z

    iget-object v1, p0, Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay$MapGestureListener;->this$1:Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;

    iget-object v1, v1, Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    # invokes: Lcom/android/mms/ui/SelectMapActivity;->moveToMarker(Lcom/google/android/maps/GeoPoint;)Z
    invoke-static {v1, v0}, Lcom/android/mms/ui/SelectMapActivity;->access$2200(Lcom/android/mms/ui/SelectMapActivity;Lcom/google/android/maps/GeoPoint;)Z

    iget-object v1, p0, Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay$MapGestureListener;->this$1:Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;

    iget-object v1, v1, Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    # getter for: Lcom/android/mms/ui/SelectMapActivity;->mSearchText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/mms/ui/SelectMapActivity;->access$900(Lcom/android/mms/ui/SelectMapActivity;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay$MapGestureListener;->this$1:Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;

    iget-object v2, v2, Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    # invokes: Lcom/android/mms/ui/SelectMapActivity;->updateLocation(Lcom/google/android/maps/GeoPoint;)Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/android/mms/ui/SelectMapActivity;->access$600(Lcom/android/mms/ui/SelectMapActivity;Lcom/google/android/maps/GeoPoint;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay$MapGestureListener;->this$1:Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;

    iget-object v1, v1, Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    # getter for: Lcom/android/mms/ui/SelectMapActivity;->mSearchText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/mms/ui/SelectMapActivity;->access$900(Lcom/android/mms/ui/SelectMapActivity;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay$MapGestureListener;->this$1:Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;

    iget-object v2, v2, Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    # getter for: Lcom/android/mms/ui/SelectMapActivity;->mSearchText:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/mms/ui/SelectMapActivity;->access$900(Lcom/android/mms/ui/SelectMapActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v1, p0, Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay$MapGestureListener;->this$1:Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;

    iget-object v1, v1, Lcom/android/mms/ui/SelectMapActivity$SelectMapOverlay;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    # getter for: Lcom/android/mms/ui/SelectMapActivity;->mSearchView:Landroid/widget/SearchView;
    invoke-static {v1}, Lcom/android/mms/ui/SelectMapActivity;->access$1000(Lcom/android/mms/ui/SelectMapActivity;)Landroid/widget/SearchView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SearchView;->requestFocus()Z

    return-void
.end method
