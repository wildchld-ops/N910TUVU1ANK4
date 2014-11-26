.class public final Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle$Comparator;
.super Ljava/lang/Object;
.source "ModeMenuResourceBundle.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Comparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;)I
    .locals 2
    .param p1    # Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .param p2    # Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    check-cast p1, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    # getter for: Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->mOrder:I
    invoke-static {p1}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->access$000(Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;)I

    move-result v0

    check-cast p2, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;

    # getter for: Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->mOrder:I
    invoke-static {p2}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;->access$000(Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
    .param p2    # Ljava/lang/Object;

    check-cast p1, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    check-cast p2, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/resourcedata/ModeMenuResourceBundle$Comparator;->compare(Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;)I

    move-result v0

    return v0
.end method
