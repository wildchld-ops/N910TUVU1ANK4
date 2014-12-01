.class Lcom/android/settings/location/LocationModeEnabler$2;
.super Ljava/lang/Object;
.source "LocationModeEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/location/LocationModeEnabler;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/location/LocationModeEnabler;


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v1, p0, Lcom/android/settings/location/LocationModeEnabler$2;->this$0:Lcom/android/settings/location/LocationModeEnabler;

    # getter for: Lcom/android/settings/location/LocationModeEnabler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/location/LocationModeEnabler;->access$000(Lcom/android/settings/location/LocationModeEnabler;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "location_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/location/LocationModeEnabler$2;->this$0:Lcom/android/settings/location/LocationModeEnabler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/location/LocationModeEnabler;->setLocationMode(I)V

    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/location/LocationModeEnabler$2;->this$0:Lcom/android/settings/location/LocationModeEnabler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/settings/location/LocationModeEnabler;->setLocationMode(I)V

    goto :goto_0
.end method
