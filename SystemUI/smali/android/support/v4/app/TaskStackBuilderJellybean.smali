.class Landroid/support/v4/app/TaskStackBuilderJellybean;
.super Ljava/lang/Object;
.source "TaskStackBuilderJellybean.java"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActivitiesPendingIntent(Landroid/content/Context;I[Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;
    .locals 1
    .param p0    # Landroid/content/Context;
    .param p1    # I
    .param p2    # [Landroid/content/Intent;
    .param p3    # I
    .param p4    # Landroid/os/Bundle;

    invoke-static {p0, p1, p2, p3, p4}, Landroid/app/PendingIntent;->getActivities(Landroid/content/Context;I[Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method
