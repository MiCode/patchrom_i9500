.class Lcom/samsung/inputmethod/setting/SimePredictiveSwitchPreference$1;
.super Ljava/lang/Object;
.source "SimePredictiveSwitchPreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/inputmethod/setting/SimePredictiveSwitchPreference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/inputmethod/setting/SimePredictiveSwitchPreference;


# direct methods
.method constructor <init>(Lcom/samsung/inputmethod/setting/SimePredictiveSwitchPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/samsung/inputmethod/setting/SimePredictiveSwitchPreference$1;->this$0:Lcom/samsung/inputmethod/setting/SimePredictiveSwitchPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 47
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 49
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lcom/samsung/inputmethod/setting/SimeSetting;->setPrediction(Z)V

    .line 51
    const/4 v0, 0x1

    .line 53
    :goto_0
    return v0

    .restart local p2
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
