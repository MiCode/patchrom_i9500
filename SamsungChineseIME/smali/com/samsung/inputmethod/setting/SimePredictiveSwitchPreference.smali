.class public Lcom/samsung/inputmethod/setting/SimePredictiveSwitchPreference;
.super Landroid/preference/SwitchPreference;
.source "SimePredictiveSwitchPreference.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/samsung/inputmethod/setting/SimePredictiveSwitchPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/inputmethod/setting/SimePredictiveSwitchPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method


# virtual methods
.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "parent"

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/preference/SwitchPreference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 41
    .local v0, view:Landroid/view/View;
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPrediction()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/setting/SimePredictiveSwitchPreference;->setChecked(Z)V

    .line 43
    new-instance v1, Lcom/samsung/inputmethod/setting/SimePredictiveSwitchPreference$1;

    invoke-direct {v1, p0}, Lcom/samsung/inputmethod/setting/SimePredictiveSwitchPreference$1;-><init>(Lcom/samsung/inputmethod/setting/SimePredictiveSwitchPreference;)V

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/setting/SimePredictiveSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 57
    return-object v0
.end method
