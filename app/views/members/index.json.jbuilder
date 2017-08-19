# frozen_string_literal: true

json.array! @members, partial: 'members/member', as: :member
