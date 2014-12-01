.class Lcom/android/mms/spam/SpamFilter$MyPhoneNumberUtils$CountryCallingCodeAndNewIndex;
.super Ljava/lang/Object;
.source "SpamFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/spam/SpamFilter$MyPhoneNumberUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CountryCallingCodeAndNewIndex"
.end annotation


# instance fields
.field public final countryCallingCode:I

.field public final newIndex:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/mms/spam/SpamFilter$MyPhoneNumberUtils$CountryCallingCodeAndNewIndex;->countryCallingCode:I

    iput p2, p0, Lcom/android/mms/spam/SpamFilter$MyPhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    return-void
.end method
