.class public Lcom/android/mms/ui/IconListAdapter$IconListItem;
.super Ljava/lang/Object;
.source "IconListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/IconListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "IconListItem"
.end annotation


# static fields
.field private static final COMMAND_NONE:I = -0x1


# instance fields
.field private mCommand:I

.field private final mResource:Landroid/graphics/drawable/Drawable;

.field private final mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/IconListAdapter$IconListItem;->mCommand:I

    iput-object p2, p0, Lcom/android/mms/ui/IconListAdapter$IconListItem;->mResource:Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lcom/android/mms/ui/IconListAdapter$IconListItem;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/IconListAdapter$IconListItem;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    iput p3, p0, Lcom/android/mms/ui/IconListAdapter$IconListItem;->mCommand:I

    return-void
.end method


# virtual methods
.method public getCommand()I
    .locals 1

    iget v0, p0, Lcom/android/mms/ui/IconListAdapter$IconListItem;->mCommand:I

    return v0
.end method

.method public getResource()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/IconListAdapter$IconListItem;->mResource:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/IconListAdapter$IconListItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method
