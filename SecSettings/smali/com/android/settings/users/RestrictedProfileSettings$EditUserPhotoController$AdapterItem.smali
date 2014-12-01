.class final Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController$AdapterItem;
.super Ljava/lang/Object;
.source "RestrictedProfileSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AdapterItem"
.end annotation


# instance fields
.field final id:I

.field final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController$AdapterItem;->title:Ljava/lang/String;

    iput p2, p0, Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController$AdapterItem;->id:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/users/RestrictedProfileSettings$EditUserPhotoController$AdapterItem;->title:Ljava/lang/String;

    return-object v0
.end method
