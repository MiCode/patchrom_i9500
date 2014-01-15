.class Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;
.super Ljava/lang/Object;
.source "DeviceProfilesSettings.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RenameEditTextPreference"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;->this$0:Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;-><init>(Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 7
    .parameter "s"

    .prologue
    const/16 v6, 0x20

    .line 111
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;->this$0:Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;

    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;->this$0:Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;

    #getter for: Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Landroid/preference/EditTextPreference;
    invoke-static {v5}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->access$000(Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;)Landroid/preference/EditTextPreference;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v5

    iput-object v5, v4, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->d:Landroid/app/Dialog;

    .line 112
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;->this$0:Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;

    iget-object v4, v4, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->d:Landroid/app/Dialog;

    instance-of v4, v4, Landroid/app/AlertDialog;

    if-eqz v4, :cond_2

    .line 113
    const/4 v3, 0x0

    .line 114
    .local v3, spaceNum:I
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    .line 115
    .local v2, length:I
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, deviceName:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_0

    .line 119
    add-int/lit8 v3, v3, 0x1

    .line 117
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 123
    :cond_1
    if-gt v2, v6, :cond_2

    .line 124
    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;->this$0:Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v4

    if-lez v4, :cond_3

    if-eq v2, v3, :cond_3

    const/4 v4, 0x1

    :goto_1
    #setter for: Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mNameEditedButtonEnabled:Z
    invoke-static {v5, v4}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->access$102(Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;Z)Z

    .line 125
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;->this$0:Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;

    iget-object v4, v4, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->d:Landroid/app/Dialog;

    check-cast v4, Landroid/app/AlertDialog;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;->this$0:Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;

    #getter for: Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mNameEditedButtonEnabled:Z
    invoke-static {v5}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->access$100(Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 136
    .end local v0           #deviceName:Ljava/lang/String;
    .end local v1           #i:I
    .end local v2           #length:I
    .end local v3           #spaceNum:I
    :cond_2
    return-void

    .line 124
    .restart local v0       #deviceName:Ljava/lang/String;
    .restart local v1       #i:I
    .restart local v2       #length:I
    .restart local v3       #spaceNum:I
    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 141
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0x20

    if-gt v0, v1, :cond_0

    .line 142
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;->this$0:Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mTempName:Ljava/lang/String;

    .line 143
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    const/16 v2, 0x20

    const/4 v3, 0x0

    .line 147
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, temp:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 149
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;->this$0:Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;

    iget-object v1, v1, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->d:Landroid/app/Dialog;

    check-cast v1, Landroid/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 150
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;->this$0:Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;

    #setter for: Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mNameEditedButtonEnabled:Z
    invoke-static {v1, v3}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->access$102(Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;Z)Z

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    if-le v1, v2, :cond_0

    .line 152
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;->this$0:Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;

    iget-object v1, v1, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mTempName:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;->this$0:Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;

    iget-object v1, v1, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mTempName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    if-gt v1, v2, :cond_2

    .line 153
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;->this$0:Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;

    #getter for: Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Landroid/preference/EditTextPreference;
    invoke-static {v1}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->access$000(Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;)Landroid/preference/EditTextPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;->this$0:Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;

    iget-object v2, v2, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mTempName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    :goto_1
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;->this$0:Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;

    iget-object v1, v1, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 158
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;->this$0:Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;

    iget-object v1, v1, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mTempName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 159
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;->this$0:Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;

    #getter for: Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Landroid/preference/EditTextPreference;
    invoke-static {v1}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->access$000(Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;)Landroid/preference/EditTextPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;->this$0:Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;

    iget-object v2, v2, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mTempName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 155
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings$RenameEditTextPreference;->this$0:Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;

    #getter for: Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->mDeviceNamePref:Landroid/preference/EditTextPreference;
    invoke-static {v1}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->access$000(Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;)Landroid/preference/EditTextPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
