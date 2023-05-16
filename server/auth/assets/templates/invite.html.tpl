{{ template "inc_header.html.tpl" . }}
<div class="card-body p-0">
	<h4 class="card-title p-3 border-bottom">{{ tr "invite.template.title" }}</h4>
	<form
		method="POST"
		action="{{ links.AcceptInvite }}"
		class="p-3"
	>
		{{ .csrfField }}
		{{ if .form.error }}
		<div class="text-danger font-weight-bold p-3" role="alert">
			{{ .form.error }}
		</div>
		{{ end }}
		<div class="mb-3">
			<label>
                {{ tr "invite.template.form.email.label" }}
            </label>
			<input
				data-test-id="input-email"
				type="email"
				class="form-control"
				name="email"
				readonly
				placeholder="{{ tr "invite.template.form.email.placeholder" }}"
				value="{{ .user.Email }}"
				aria-label="{{ tr "invite.template.form.emaillabel" }}"
			>
		</div>
		<div class="mb-3">
            <label>
                {{ tr "invite.template.form.new-password.label" }}
            </label>
			<input
				data-test-id="input-new-password"
				type="password"
				required
				class="form-control"
				name="password"
				autocomplete="new-password"
				placeholder="{{ tr "invite.template.form.new-password.placeholder" }}"
				aria-label="{{ tr "invite.template.form.new-passwordlabel" }}"
			>
		</div>
		<div class="text-right">
			<button
				data-test-id="button-change-password"
				class="btn btn-primary btn-block btn-lg"
				type="submit"
			>
            {{ tr "invite.template.form.buttons.password" }}
			</button>
		</div>
	</form>
</div>
{{ template "inc_footer.html.tpl" . }}