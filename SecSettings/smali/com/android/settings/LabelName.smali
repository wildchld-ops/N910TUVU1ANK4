.class public Lcom/android/settings/LabelName;
.super Landroid/app/Activity;
.source "LabelName.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f040125

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    return-void
.end method
