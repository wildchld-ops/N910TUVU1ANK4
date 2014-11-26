.class public Lcom/touchtype_fluency/util/ExclusionPattern;
.super Ljava/lang/Object;


# static fields
.field public static final DEFAULT_EXCLUSIONS_PATTERN:Ljava/lang/String; = "(\\+\\d{1,2}([ -]?\\(\\d\\))?[ -]?|\\(\\d{3,5}\\)[ -]?)?(?<=^|\\D)((((\\d{3,4}[ -]?){2,3}\\d{3,4})|((\\d{4,}[ -]?){2}\\d{4,})|(\\d{6,}[ -]?\\d{4,})|(\\d{5,}[ -]?\\d{5,})|(\\d{4,}[ -]?\\d{6,})))"

.field public static final PASSWORD_EXCLUSION_PATTERN:Ljava/lang/String; = "(?<!\\+\\d{1,2}([ -]?\\(\\d\\))?[ -]?|\\(\\d{3,5}\\)[ -]?)(?<=^|\\D)((((\\d{3,4}[ -]?){2,3}\\d{3,4})|((\\d{4,}[ -]?){2}\\d{4,})|(\\d{6,}[ -]?\\d{4,})|(\\d{5,}[ -]?\\d{5,})|(\\d{4,}[ -]?\\d{6,})))|[\u00a1\u00bf]?[^.!\u00a1?\u00bf\u061f]*\\b(Adgangskode|A\u00f0g|A\u00f0gangsor\u00f0|Contrasenya|Contrase\u00f1a|Contrasinal|Fjal\u00ebkalimi|Geslo|Has\u0142o|Heslo|Jelsz\u00f3|Kata laluan|Kata sandi|L\u00f6senord|L-o|Mot de passe|M\u1eadt m\u00e3|Palavra-passe|Parol|Parole|Parol\u0103|Parool|Pas|Pasahitza|Pasfhocal|Passord|Password|Passwort|P[/-]W|Salasana|Senha|Slapta\u017eodis|Wachtwoord|\u015eifre|\u015eifr\u0259|\u0160ifra|\u041a\u0456\u043b\u0442\u0441\u04e9\u0437|\u041b\u043e\u0437|\u041b\u043e\u0437\u0438\u043d\u043a\u0430|\u041f\u0410\u0420|\u041f\u0430\u0440\u043e\u043b\u0430|\u041f\u0430\u0440\u043e\u043b\u044c|\u0533\u0532\u054c|\u0533\u0561\u0572\u057f\u0576\u0561\u0562\u0561\u057c|\u05e1\u05d9\u05e1|\u05e1\u05d9\u05e1\u05de\u05d4|\u0631\u0645\u0632|\u0643\u0644\u0645\u0629 \u0627\u0644\u0645\u0631\u0648\u0631|\u067e\u0627\u0633 \u0648\u0631\u0688|\u10de\u10d0\u10e0\u10dd\u10da\u10d8|\u10de\u10e0\u10da|\ube44\ubc00\ubc88\ud638)\\b[^.!\u00a1?\u00bf\u061f]*([.!\u00a1?\u00bf\u061f]|$)|[^.?!;\u037e]*\\b(\u039a\u03c9\u03b4\u03b9\u03ba\u03cc\u03c2 \u03c0\u03c1\u03cc\u03c3\u03b2\u03b1\u03c3\u03b7\u03c2|\u03ba\u03c9\u03b4)\\b[^.?!;\u037e]*([.?!;\u037e]|$)|[^.?!\uff0e\uff61\uff01\uff1f]*(\u5bc6\u7801|\u5bc6\u78bc)[^.?!\uff0e\uff61\uff01\uff1f]*([.?!\uff0e\uff61\uff01\uff1f]|$)|[^.?! ]*(\u0e23\u0e2b\u0e2a\u0e1c\u0e32\u0e19|\u0e23\u0e2b\u0e2a\u0e1c\u0e32\u0e19)[^.?! ]*([.?! ]|$)"


# instance fields
.field private final a:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/touchtype_fluency/util/ExclusionPattern;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static createDefault()Lcom/touchtype_fluency/util/ExclusionPattern;
    .locals 3

    new-instance v0, Lcom/touchtype_fluency/util/ExclusionPattern;

    const-string v1, "(\\+\\d{1,2}([ -]?\\(\\d\\))?[ -]?|\\(\\d{3,5}\\)[ -]?)?(?<=^|\\D)((((\\d{3,4}[ -]?){2,3}\\d{3,4})|((\\d{4,}[ -]?){2}\\d{4,})|(\\d{6,}[ -]?\\d{4,})|(\\d{5,}[ -]?\\d{5,})|(\\d{4,}[ -]?\\d{6,})))"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/touchtype_fluency/util/ExclusionPattern;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method final a(Ljava/lang/CharSequence;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/touchtype_fluency/util/ExclusionPattern;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
