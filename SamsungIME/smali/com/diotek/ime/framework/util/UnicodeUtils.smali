.class public final Lcom/diotek/ime/framework/util/UnicodeUtils;
.super Ljava/lang/Object;
.source "UnicodeUtils.java"


# static fields
.field public static final UNICODE_OBJECT_REPLACEMENT_CHARACTER:C = '\ufffc'


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static containObjUnicode(Ljava/lang/String;)Z
    .locals 6

    const/4 v3, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_1
    if-ge v2, v1, :cond_0

    invoke-static {p0, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    int-to-char v4, v0

    const v5, 0xfffc

    if-ne v4, v5, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_1
.end method
