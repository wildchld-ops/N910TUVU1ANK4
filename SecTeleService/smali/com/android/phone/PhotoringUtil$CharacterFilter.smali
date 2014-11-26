.class public Lcom/android/phone/PhotoringUtil$CharacterFilter;
.super Ljava/lang/Object;
.source "PhotoringUtil.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhotoringUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CharacterFilter"
.end annotation


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/phone/PhotoringUtil$CharacterFilter;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 8
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # I
    .param p3    # I
    .param p4    # Landroid/text/Spanned;
    .param p5    # I
    .param p6    # I

    const/4 v4, 0x0

    const/16 v7, 0x2003

    const-string v5, "feature_lgt"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "\\"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "<"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ">"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    iget-object v4, p0, Lcom/android/phone/PhotoringUtil$CharacterFilter;->context:Landroid/content/Context;

    invoke-static {v4, v7}, Lcom/android/phone/PhotoringUtil;->showToast(Landroid/content/Context;I)V

    const-string v4, ""

    :cond_1
    :goto_0
    return-object v4

    :cond_2
    const-string v5, "feature_ktt"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "\\"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "<"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ">"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    iget-object v4, p0, Lcom/android/phone/PhotoringUtil$CharacterFilter;->context:Landroid/content/Context;

    invoke-static {v4, v7}, Lcom/android/phone/PhotoringUtil;->showToast(Landroid/content/Context;I)V

    const-string v4, ""

    goto :goto_0

    :cond_4
    const-string v5, "feature_skt"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x20

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :sswitch_0
    const/16 v5, 0x226a

    invoke-virtual {v2, v0, v5}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    const/4 v1, 0x1

    goto :goto_2

    :sswitch_1
    const/16 v5, 0x226b

    invoke-virtual {v2, v0, v5}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    const/4 v1, 0x1

    goto :goto_2

    :sswitch_2
    const/16 v5, 0x25cf

    invoke-virtual {v2, v0, v5}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    const/4 v1, 0x1

    goto :goto_2

    :sswitch_3
    const v5, 0xffe0

    invoke-virtual {v2, v0, v5}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    const/4 v1, 0x1

    goto :goto_2

    :sswitch_4
    const v5, 0xffe1

    invoke-virtual {v2, v0, v5}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    const/4 v1, 0x1

    goto :goto_2

    :sswitch_5
    const v5, 0xffe5

    invoke-virtual {v2, v0, v5}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    const/4 v1, 0x1

    goto :goto_2

    :sswitch_6
    const/16 v5, 0x24d2

    invoke-virtual {v2, v0, v5}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    const/4 v1, 0x1

    goto :goto_2

    :sswitch_7
    const/16 v5, 0xb7

    invoke-virtual {v2, v0, v5}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    const/4 v1, 0x1

    goto :goto_2

    :sswitch_8
    const/16 v5, 0x20

    invoke-virtual {v2, v0, v5}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    const/4 v1, 0x1

    goto :goto_2

    :sswitch_9
    const v5, 0xffe6

    invoke-virtual {v2, v0, v5}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    if-eqz v1, :cond_1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_2
        0xa2 -> :sswitch_3
        0xa3 -> :sswitch_4
        0xa5 -> :sswitch_5
        0xa9 -> :sswitch_6
        0xab -> :sswitch_0
        0xbb -> :sswitch_1
        0x2022 -> :sswitch_7
        0x20a9 -> :sswitch_9
        0xfffd -> :sswitch_8
    .end sparse-switch
.end method
