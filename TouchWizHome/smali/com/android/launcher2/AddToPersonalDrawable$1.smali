.class final Lcom/android/launcher2/AddToPersonalDrawable$1;
.super Landroid/util/Property;
.source "AddToPersonalDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/AddToPersonalDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property",
        "<",
        "Lcom/android/launcher2/AddToPersonalDrawable;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/android/launcher2/AddToPersonalDrawable;)Ljava/lang/Float;
    .locals 1
    .param p1    # Lcom/android/launcher2/AddToPersonalDrawable;

    invoke-virtual {p1}, Lcom/android/launcher2/AddToPersonalDrawable;->getScaleFactor()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;

    check-cast p1, Lcom/android/launcher2/AddToPersonalDrawable;

    invoke-virtual {p0, p1}, Lcom/android/launcher2/AddToPersonalDrawable$1;->get(Lcom/android/launcher2/AddToPersonalDrawable;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public set(Lcom/android/launcher2/AddToPersonalDrawable;Ljava/lang/Float;)V
    .locals 1
    .param p1    # Lcom/android/launcher2/AddToPersonalDrawable;
    .param p2    # Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/launcher2/AddToPersonalDrawable;->setScaleFactor(F)V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
    .param p2    # Ljava/lang/Object;

    check-cast p1, Lcom/android/launcher2/AddToPersonalDrawable;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/AddToPersonalDrawable$1;->set(Lcom/android/launcher2/AddToPersonalDrawable;Ljava/lang/Float;)V

    return-void
.end method
