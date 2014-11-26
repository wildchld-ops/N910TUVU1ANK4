.class Lcom/android/launcher2/HomeView$PendingAddArguments;
.super Ljava/lang/Object;
.source "HomeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/HomeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PendingAddArguments"
.end annotation


# instance fields
.field cellX:I

.field cellY:I

.field container:J

.field dropPos:[I

.field intent:Landroid/content/Intent;

.field isSecretItem:Z

.field requestCode:I

.field screen:I

.field spanX:I

.field spanY:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/HomeView$1;)V
    .locals 0
    .param p1    # Lcom/android/launcher2/HomeView$1;

    invoke-direct {p0}, Lcom/android/launcher2/HomeView$PendingAddArguments;-><init>()V

    return-void
.end method
