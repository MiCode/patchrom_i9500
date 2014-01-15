.class Lcom/android/settings_ex/RadioPreference$1;
.super Ljava/lang/Object;
.source "RadioPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/RadioPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/RadioPreference;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/RadioPreference;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/settings_ex/RadioPreference$1;->this$0:Lcom/android/settings_ex/RadioPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings_ex/RadioPreference$1;->this$0:Lcom/android/settings_ex/RadioPreference;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    #calls: Landroid/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z
    invoke-static {v0, v1}, Lcom/android/settings_ex/RadioPreference;->access$000(Lcom/android/settings_ex/RadioPreference;Ljava/lang/Object;)Z

    .line 46
    return-void
.end method
