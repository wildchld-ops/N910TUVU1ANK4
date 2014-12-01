.class public Lcom/diotek/ime/implement/setting/AutoSubstitutionsDataCompareator;
.super Ljava/lang/Object;
.source "AutoSubstitutionsDataCompareator.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/diotek/ime/implement/setting/AutoSubstitutionsData;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x143af56c784f50dbL


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/diotek/ime/implement/setting/AutoSubstitutionsData;Lcom/diotek/ime/implement/setting/AutoSubstitutionsData;)I
    .locals 2

    iget-object v0, p1, Lcom/diotek/ime/implement/setting/AutoSubstitutionsData;->mShortcut:Ljava/lang/String;

    iget-object v1, p2, Lcom/diotek/ime/implement/setting/AutoSubstitutionsData;->mShortcut:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/diotek/ime/implement/setting/AutoSubstitutionsData;

    check-cast p2, Lcom/diotek/ime/implement/setting/AutoSubstitutionsData;

    invoke-virtual {p0, p1, p2}, Lcom/diotek/ime/implement/setting/AutoSubstitutionsDataCompareator;->compare(Lcom/diotek/ime/implement/setting/AutoSubstitutionsData;Lcom/diotek/ime/implement/setting/AutoSubstitutionsData;)I

    move-result v0

    return v0
.end method
