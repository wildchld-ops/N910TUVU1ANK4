.class Lcom/android/phone/SimContacts$NamePhoneTypePair;
.super Ljava/lang/Object;
.source "SimContacts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/SimContacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NamePhoneTypePair"
.end annotation


# instance fields
.field final name:Ljava/lang/String;

.field nameLen:I

.field final phoneType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 5
    .param p1    # Ljava/lang/String;

    const/4 v4, 0x7

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v3, p0, Lcom/android/phone/SimContacts$NamePhoneTypePair;->nameLen:I

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iput v1, p0, Lcom/android/phone/SimContacts$NamePhoneTypePair;->nameLen:I

    :cond_0
    iget v1, p0, Lcom/android/phone/SimContacts$NamePhoneTypePair;->nameLen:I

    add-int/lit8 v1, v1, -0x2

    if-ltz v1, :cond_5

    if-eqz p1, :cond_5

    iget v1, p0, Lcom/android/phone/SimContacts$NamePhoneTypePair;->nameLen:I

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_5

    iget v1, p0, Lcom/android/phone/SimContacts$NamePhoneTypePair;->nameLen:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    const/16 v1, 0x57

    if-ne v0, v1, :cond_1

    const/4 v1, 0x3

    iput v1, p0, Lcom/android/phone/SimContacts$NamePhoneTypePair;->phoneType:I

    :goto_0
    iget v1, p0, Lcom/android/phone/SimContacts$NamePhoneTypePair;->nameLen:I

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/SimContacts$NamePhoneTypePair;->name:Ljava/lang/String;

    :goto_1
    return-void

    :cond_1
    const/16 v1, 0x4d

    if-eq v0, v1, :cond_2

    const/16 v1, 0x4f

    if-ne v0, v1, :cond_3

    :cond_2
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/phone/SimContacts$NamePhoneTypePair;->phoneType:I

    goto :goto_0

    :cond_3
    const/16 v1, 0x48

    if-ne v0, v1, :cond_4

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/phone/SimContacts$NamePhoneTypePair;->phoneType:I

    goto :goto_0

    :cond_4
    iput v4, p0, Lcom/android/phone/SimContacts$NamePhoneTypePair;->phoneType:I

    goto :goto_0

    :cond_5
    iput v4, p0, Lcom/android/phone/SimContacts$NamePhoneTypePair;->phoneType:I

    iput-object p1, p0, Lcom/android/phone/SimContacts$NamePhoneTypePair;->name:Ljava/lang/String;

    goto :goto_1
.end method
