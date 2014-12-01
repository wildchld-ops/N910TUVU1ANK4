.class public Lcom/android/mms/ui/ViewBySelectorAdapter$ViewByListItem;
.super Lcom/android/mms/ui/IconListAdapter$IconListItem;
.source "ViewBySelectorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ViewBySelectorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewByListItem"
.end annotation


# instance fields
.field private mCommand:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/IconListAdapter$IconListItem;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    iput p3, p0, Lcom/android/mms/ui/ViewBySelectorAdapter$ViewByListItem;->mCommand:I

    return-void
.end method


# virtual methods
.method public getCommand()I
    .locals 1

    iget v0, p0, Lcom/android/mms/ui/ViewBySelectorAdapter$ViewByListItem;->mCommand:I

    return v0
.end method

.method public bridge synthetic getResource()Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-super {p0}, Lcom/android/mms/ui/IconListAdapter$IconListItem;->getResource()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTitle()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/android/mms/ui/IconListAdapter$IconListItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
